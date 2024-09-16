<?php

namespace App\Http\Controllers\Admin;

use App\Services\Mail\Withdrawal\WithdrawalViaAdminMailService;
use App\Services\Mail\Deposit\DepositViaAdminMailService;
use App\Http\Controllers\Users\EmailController;
use Hash, Validator, Session, DB, Exception;
use App\DataTables\Admin\{AdminsDataTable, 
    EachUserTransactionsDataTable,
    UsersDataTable
};
use App\Services\Mail\{UserStatusChangeMailService,
    UserVerificationMailService
};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Helpers\Common;
use App\Models\{ActivityLog,
    CryptoProvider,
    VerifyUser,
    PaymentMethod,
    Transaction,
    Withdrawal,
    FeesLimit,
    Currency,
    RoleUser,
    Dispute,
    Deposit,
    Wallet,
    Ticket,
    QrCode,
    Admin,
    User,
    Role
};

class UserController extends Controller
{
    protected $helper;
    protected $email;
    protected $currency;
    protected $user;

    public function __construct()
    {
        $this->helper = new Common();
        $this->email = new EmailController();
        $this->currency = new Currency();
        $this->user = new User();
    }

    public function index(UsersDataTable $dataTable)
    {
        $data['menu']     = 'users';
        $data['sub_menu'] = 'users_list';
        return $dataTable->render('admin.users.index', $data);
    }

    public function create()
    {
        $data['menu'] = 'users';
        $data['sub_menu'] = 'users_list';
        $data['roles'] = Role::select('id', 'display_name')->where('user_type', "User")->get();

        return view('admin.users.create', $data);
    }

    public function store(Request $request)
    {
        if ($request->isMethod('post')) {
            $rules = array(
                'first_name'            => 'required|max:30|regex:/^[a-zA-Z\s]*$/',
                'last_name'             => 'required|max:30|regex:/^[a-zA-Z\s]*$/',
                'email'                 => 'required|unique:users,email',
                'password'              => 'required|min:6|confirmed',
                'password_confirmation' => 'required|min:6',
                'status'                => 'required',
            );

            $fieldNames = array(
                'first_name'            => 'First Name',
                'last_name'             => 'Last Name',
                'email'                 => 'Email',
                'password'              => 'Password',
                'password_confirmation' => 'Confirm Password',
                'status'                => 'Status',
            );
            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            } else {

                try {
                    DB::beginTransaction();

                    // Create user
                    $user = $this->user->createNewUser($request, 'admin');

                    // Assigning user_type and role id to new user
                    RoleUser::insert(['user_id' => $user->id, 'role_id' => $user->role_id, 'user_type' => 'User']);

                    // Create user detail
                    $this->user->createUserDetail($user->id);

                    // Create user's default wallet
                    $this->user->createUserDefaultWallet($user->id, settings('default_currency'));

                    // Create wallets that are allowed by admin
                    if (settings('allowed_wallets') != 'none') {
                        $this->user->createUserAllowedWallets($user->id, settings('allowed_wallets'));
                    }
                  

                    if (isActive('TatumIo') && CryptoProvider::getStatus('TatumIo') == 'Active' && $user->status == 'Active') {
                        $generateUserCryptoWalletAddress = $this->user->generateUserTatumIoWalletAddress($user);
                        if ($generateUserCryptoWalletAddress['status'] == 401) {
                            DB::rollBack();
                            $this->helper->one_time_message('error', $generateUserCryptoWalletAddress['message']);
                            return redirect(config('adminPrefix').'/users');
                        }
                    }



                    //Entry for User's QrCode Generation - starts
                    QrCode::createUserQrCode($user);

                    $userEmail          = $user->email;
                    $userFormattedPhone = $user->formattedPhone;

                    // Process Registered User Transfers
                    $this->user->processUnregisteredUserTransfers($userEmail, $userFormattedPhone, $user, settings('default_currency'));

                    // Process Registered User Request Payments
                    $this->user->processUnregisteredUserRequestPayments($userEmail, $userFormattedPhone, $user, settings('default_currency'));

                    // Email verification
                    if (!$user->user_detail->email_verification) {
                        if (preference('verification_mail') == "Enabled") {
                            VerifyUser::generateVerificationToken($user->id);
                            try {
                                (new UserVerificationMailService)->send($user);
                                
                                DB::commit();
                                $this->helper->one_time_message('success', __('An email has been sent to :x with verification code.', ['x' =>  $user->email]));
                                return redirect(config('adminPrefix').'/users');
                            } catch (Exception $e) {
                                DB::rollBack();
                                $this->helper->one_time_message('error', $e->getMessage());
                                return redirect(config('adminPrefix').'/users');
                            }
                        }
                    }
                    DB::commit();
                    $this->helper->one_time_message('success', __('The :x has been successfully saved.', ['x' => __('user')]));
                    return redirect(config('adminPrefix').'/users');
                } catch (Exception $e) {
                    DB::rollBack();
                    $this->helper->one_time_message('error', $e->getMessage());
                    return redirect(config('adminPrefix').'/users');
                }
            }
        }
    }

    public function edit($id)
    {
        $data['menu'] = 'users';
        $data['sub_menu'] = 'users_list';
        $data['user_tab_menu'] = 'user_profile';

        $data['users'] = User::find($id);

        $data['roles'] = Role::select('id', 'display_name')->where('user_type', "User")->get();
     

        return view('admin.users.edit', $data);
    }

    public function update(Request $request)
    {
        if ($request->isMethod('post')) {
            $rules = array(
                'first_name' => 'required|max:30|regex:/^[a-zA-Z\s]*$/',
                'last_name' => 'required|max:30|regex:/^[a-zA-Z\s]*$/',
                'email' => 'required|email|unique:users,email,' . $request->id,
                'password' => 'nullable|min:6|confirmed',
                'password_confirmation' => 'nullable|min:6',
                'status' => 'required',
            );

            $validator = Validator::make($request->all(), $rules);

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            } else {

                try {
                    DB::beginTransaction();
                    $user = User::find($request->id);
                    $user->first_name = $request->first_name;
                    $user->last_name  = $request->last_name;
                    $user->email      = $request->email;
                    $user->role_id    = $request->role;
                    $user->status     = $request->status;

                    $formattedPhone = ltrim($request->phone, '0');
                    if (!empty($request->phone)) {
                        $user->phone          = preg_replace("/[\s-]+/", "", $formattedPhone);
                        $user->defaultCountry = $request->user_defaultCountry;
                        $user->carrierCode    = $request->user_carrierCode;
                        $user->formattedPhone = $request->formattedPhone;
                    } else {
                        $user->phone          = null;
                        $user->defaultCountry = null;
                        $user->carrierCode    = null;
                        $user->formattedPhone = null;
                    }

                    if (!is_null($request->password) && !is_null($request->password_confirmation)) {
                        $user->password = \Hash::make($request->password);
                    }
                    $user->save();

                    RoleUser::where(['user_id' => $request->id, 'user_type' => 'User'])->update(['role_id' => $request->role]);

                    DB::commit();

                    if ($request->status != $user->status) {
                        (new UserStatusChangeMailService)->send($user);
                    }

                    $this->helper->one_time_message('success', __('The :x has been successfully saved.', ['x' => __('user')]));
                    return redirect(config('adminPrefix').'/users');
                } catch (Exception $e) {
                    DB::rollBack();
                    $this->helper->one_time_message('error', $e->getMessage());
                    return redirect(config('adminPrefix').'/users');
                }
            }
        }
    }

    

    //Extended function below - deposit
    public function currencyList($activeCurrency, $feesLimitCurrency)
    {
        $selectedCurrency = [];
        foreach ($activeCurrency as $aCurrency)
        {
            foreach ($feesLimitCurrency as $flCurrency)
            {
                if ($aCurrency->id == $flCurrency->currency_id && $aCurrency->status == 'Active' && $flCurrency->has_transaction == 'Yes')
                {
                    $selectedCurrency[$aCurrency->id]['id']   = $aCurrency->id;
                    $selectedCurrency[$aCurrency->id]['code'] = $aCurrency->code;
                    $selectedCurrency[$aCurrency->id]['type'] = $aCurrency->type;
                }
            }
        }
        return $selectedCurrency;
    }


    /* End of Admin Withdraw */

    public function eachUserTransaction($id, EachUserTransactionsDataTable $dataTable)
    {
        $data['menu'] = 'users';
        $data['sub_menu'] = 'users_list';
        $data['user_tab_menu'] = 'user_transactions';

        $data['users'] = User::find($id, ['id', 'first_name', 'last_name']);
        $data['transactionStatus'] = (new Transaction)->eachUserTransactionGroupBy('status', $id);
        $data['transactionCurrency'] = (new Transaction)->eachUserTransactionGroupBy('currency_id', $id);
        $data['transactionType'] = (new Transaction)->eachUserTransactionGroupBy('transaction_type_id', $id);

        $data['from'] = isset(request()->from) ? setDateForDb(request()->from) : null;
        $data['to'] = isset(request()->to ) ? setDateForDb(request()->to) : null;
        $data['status'] = isset(request()->status) ? request()->status : 'all';
        $data['currency'] = isset(request()->currency) ? request()->currency : 'all';
        $data['type'] = isset(request()->type) ? request()->type : 'all';

        return $dataTable->with('user_id', $id)->render('admin.users.eachusertransaction', $data); //passing $id to dataTable ass user_id
    }


    public function destroy($id)
    {
        $user = User::find($id);

        if ($user) {
            try {
                DB::beginTransaction();
                // Deleting Non-Relational Table Entries

                ActivityLog::where(['user_id' => $id])->delete();
                RoleUser::where(['user_id' => $id, 'user_type' => 'User'])->delete();

                $user->delete();

                DB::commit();

                $this->helper->one_time_message('success', __('The :x has been successfully deleted.', ['x' => __('user')]));
                return redirect(config('adminPrefix').'/users');
            } catch (Exception $e) {
                DB::rollBack();
                $this->helper->one_time_message('error', $e->getMessage());
                return redirect(config('adminPrefix').'/users');
            }
        }
    }

    public function postEmailCheck(Request $request)
    {

        if (isset($request->admin_id) || isset($request->user_id))
        {
            if (isset($request->type) && $request->type == "admin-email")
            {
                $req_id = $request->admin_id;
                $email  = Admin::where(['email' => $request->email])->where(function ($query) use ($req_id)
                {
                    $query->where('id', '!=', $req_id);
                })->exists();
            }
            else
            {
                $req_id = $request->user_id;
                $email  = User::where(['email' => $request->email])->where(function ($query) use ($req_id)
                {
                    $query->where('id', '!=', $req_id);
                })->exists();
            }
        }
        else
        {
            if (isset($request->type) && $request->type == "admin-email")
            {
                $email = Admin::where(['email' => $request->email])->exists();
            }
            else
            {
                $email = User::where(['email' => $request->email])->exists();
            }
        }

        if ($email)
        {
            $data['status'] = true;
            $data['fail']   = __('The :x is already exist.', ['x' => __('email')]);
        }
        else
        {
            $data['status']  = false;
            $data['success'] = __('The :x is available.', ['x' => __('email')]);
        }
        return json_encode($data);
    }

    public function duplicatePhoneNumberCheck(Request $request)
    {
        $req_id = $request->id;

        if (isset($req_id))
        {
            $user = User::where(['phone' => preg_replace("/[\s-]+/", "", $request->phone), 'carrierCode' => $request->carrierCode])->where(function ($query) use ($req_id)
            {
                $query->where('id', '!=', $req_id);
            })->first(['phone', 'carrierCode']);
        }
        else
        {
            $user = User::where(['phone' => preg_replace("/[\s-]+/", "", $request->phone), 'carrierCode' => $request->carrierCode])->first(['phone', 'carrierCode']);
        }

        if (!empty($user->phone) && !empty($user->carrierCode))
        {
            $data['status'] = true;
            $data['fail']   = __('The :x is already exist.', ['x' => __('phone number')]);
        }
        else
        {
            $data['status']  = false;
            $data['success'] = __('The :x is available.', ['x' => __('phone number')]);
        }
        return json_encode($data);
    }

}