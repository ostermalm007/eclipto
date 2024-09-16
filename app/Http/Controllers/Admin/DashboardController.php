<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{Blog, Currency,
    Transaction,
    Merchant,
    Dispute,
    DocumentVerification,
    Wallet,
    Ticket,
    User
};
use Illuminate\Support\Collection;
use Carbon\Carbon;


class DashboardController extends Controller
{
    protected $transaction;

    public function __construct()
    {
        $this->transaction = new Transaction();
        $this->wallet      = new Wallet();
        $this->ticket      = new Ticket();
        $this->dispute     = new Dispute();
    }

    public function index()
    {
        $data['menu']            = 'dashboard';

        $thirtyDaysNameList      = $this->thirtyDaysNameList();
        $data['date']            = json_encode($thirtyDaysNameList);
        $lastThirtyDaysDeposit   = $this->transaction->lastThirtyDaysDeposit();

        $lastThirtyDaysWitdrawal = $this->transaction->lastThirtyDaysWitdrawal();
        $lastThirtyDaysTransfer  = $this->transaction->lastThirtyDaysTransfer();
        $data['depositArray']    = json_encode($lastThirtyDaysDeposit);
        $data['withdrawalArray'] = json_encode($lastThirtyDaysWitdrawal);
        $data['transferArray']   = json_encode($lastThirtyDaysTransfer);

        //this week start
        $monday                                  = strtotime("last monday");
        $monday                                  = date('w', $monday) == date('w') ? $monday + 7 * 86400 : $monday;
        $sunday                                  = strtotime(date("Y-m-d", $monday) . " +7 days");
        $this_week_sd                            = date("Y-m-d", $monday);
        $this_week_ed                            = date("Y-m-d", $sunday);
        $thisWeekRevenue                         = $this->transaction->totalRevenue($this_week_sd, $this_week_ed);
        $data['this_week_revenue']               = $thisWeekRevenue;
        $thisWeekDeposit                         = $this->transaction->totalDeposit($this_week_sd, $this_week_ed);
        $data['this_week_deposit']               = $thisWeekDeposit;
        $data['this_week_deposit_percentage']    = (($thisWeekRevenue != 0) ? (($thisWeekDeposit * 100) / $thisWeekRevenue) : 0);
        $thisWeekWithdrawal                      = $this->transaction->totalWithdrawal($this_week_sd, $this_week_ed);
        $data['this_week_withdrawal']            = $thisWeekWithdrawal;
        $data['this_week_withdrawal_percentage'] = (($thisWeekRevenue != 0) ? (($thisWeekWithdrawal * 100) / $thisWeekRevenue) : 0);
        $thisWeekTransfer                        = $this->transaction->totalTransfer($this_week_sd, $this_week_ed);
        $data['this_week_transfer']              = $thisWeekTransfer;
        $data['this_week_transfer_percentage']   = (($thisWeekRevenue != 0) ? (($thisWeekTransfer * 100) / $thisWeekRevenue) : 0);
        //this week end

        //last week start
        $monday                                  = strtotime("last monday");
        $monday                                  = date('W', $monday) == date('W') ? $monday - 7 * 86400 : $monday;
        $sunday                                  = strtotime(date("Y-m-d", $monday) . " +6 days");
        $last_week_sd                            = date("Y-m-d", $monday);
        $last_week_ed                            = date("Y-m-d", $sunday);
        $lastWeekRevenue                         = $this->transaction->totalRevenue($last_week_sd, $last_week_ed);
        $data['last_week_revenue']               = $lastWeekRevenue;
        $lastWeekDeposit                         = $this->transaction->totalDeposit($last_week_sd, $last_week_ed);
        $data['last_week_deposit']               = $lastWeekDeposit;
        $data['last_week_deposit_percentage']    = (($lastWeekRevenue != 0) ? (($lastWeekDeposit * 100) / $lastWeekRevenue) : 0);
        $lastWeekWithdrawal                      = $this->transaction->totalWithdrawal($last_week_sd, $last_week_ed);
        $data['last_week_withdrawal']            = $lastWeekWithdrawal;
        $data['last_week_withdrawal_percentage'] = (($lastWeekRevenue != 0) ? (($lastWeekWithdrawal * 100) / $lastWeekRevenue) : 0);
        $lastWeekTransfer                        = $this->transaction->totalTransfer($last_week_sd, $last_week_ed);
        $data['last_week_transfer']              = $lastWeekTransfer;
        $data['last_week_transfer_percentage']   = (($lastWeekRevenue != 0) ? (($lastWeekTransfer * 100) / $lastWeekRevenue) : 0);
        //last week end

        //this  month start
        $this_month_sd                            = date('Y-m-01', strtotime(date('Y-m-d')));
        $this_month_ed                            = date('Y-m-t', strtotime(date('Y-m-d')));
        $thisMonthRevenue                         = $this->transaction->totalRevenue($this_month_sd, $this_month_ed);
        $data['this_month_revenue']               = $thisMonthRevenue;
        $thisMonthDeposit                         = $this->transaction->totalDeposit($this_month_sd, $this_month_ed);
        $data['this_month_deposit']               = $thisMonthDeposit;
        $data['this_month_deposit_percentage']    = (($thisMonthRevenue != 0) ? (($thisMonthDeposit * 100) / $thisMonthRevenue) : 0);
        $thisMonthWithdrawal                      = $this->transaction->totalWithdrawal($this_month_sd, $this_month_ed);
        $data['this_month_withdrawal']            = $thisMonthWithdrawal;
        $data['this_month_withdrawal_percentage'] = (($thisMonthRevenue != 0) ? (($thisMonthWithdrawal * 100) / $thisMonthRevenue) : 0);
        $thisMonthTransfer                        = $this->transaction->totalTransfer($this_month_sd, $this_month_ed);
        $data['this_month_transfer']              = $thisMonthTransfer;
        $data['this_month_transfer_percentage']   = (($thisMonthRevenue != 0) ? (($thisMonthTransfer * 100) / $thisMonthRevenue) : 0);
        //this month end

        //last month start
        $last_month_sd                            = date('Y-m-d', strtotime('first day of last month'));
        $last_month_ed                            = date('Y-m-d', strtotime('last day of last month'));
        $lastMonthRevenue                         = $this->transaction->totalRevenue($last_month_sd, $last_month_ed);
        $data['last_month_revenue']               = $lastMonthRevenue;
        $lastMonthDeposit                         = $this->transaction->totalDeposit($last_month_sd, $last_month_ed);
        $data['last_month_deposit']               = $lastMonthDeposit;
        $data['last_month_deposit_percentage']    = (($lastMonthRevenue != 0) ? (($lastMonthDeposit * 100) / $lastMonthRevenue) : 0);
        $lastMonthWithdrawal                      = $this->transaction->totalWithdrawal($last_month_sd, $last_month_ed);
        $data['last_month_withdrawal']            = $lastMonthWithdrawal;
        $data['last_month_withdrawal_percentage'] = (($lastMonthRevenue != 0) ? (($lastMonthWithdrawal * 100) / $lastMonthRevenue) : 0);
        $lastMonthTransfer                        = $this->transaction->totalTransfer($last_month_sd, $last_month_ed);
        $data['last_month_transfer']              = $lastMonthTransfer;
        $data['last_month_transfer_percentage']   = (($lastMonthRevenue != 0) ? (($lastMonthTransfer * 100) / $lastMonthRevenue) : 0);
        //last month end
        //wallet start
        $data['wallets'] = $this->wallet->walletBalance();

        //wallet end
        //Currency Exchange Start
        $data['currencies']      = Currency::where(['status' => 'Active'])->get();
        $data['defaultCurrency'] = Currency::find(Session::get('default_currency'));
        //Currency Exchange End
        $data['totalPendingVerifications']  = DocumentVerification::where('status','pending')->count();
        $data['totalUser']                  = User::count();
        $data['totalBlogs']                 = Blog::count();
        $data['totalTicket']                = Ticket::count();
        $data['totalDispute']               = Dispute::count();
        $data['latestTicket']               = $this->ticket->latestTicket();
        $data['latestDispute']              = $this->dispute->latestDispute();
        return view('admin.dashboard.index', $data);
    }

    public function home(){

        $totalPendingTransactions=Transaction::where('status','pending')->count();
        $totalPendingVerifications=DocumentVerification::where('status','pending')->count();
        $totalUser=User::count();
        $totalBlogs=Blog::count();

        $chartLables=[];
        $chartUsers=[];
        $chartSucceededTransactions=[];
        $chartCancledTransactions=[];

        for ($i = 11; $i >= 0; $i--) {
            $chartLables[] = Carbon::now()->subMonths($i)->format('F, Y');
        }


        foreach ($chartLables as $month) {
            $startDate = Carbon::parse("first day of $month")->startOfDay();
            $endDate = Carbon::parse("last day of $month")->endOfDay();

            
            $userCount = User::where('type','user')->whereBetween('created_at', [$startDate, $endDate])->count();
            $chartUsers[] = $userCount;

            $succeededTransactions = Transaction::where('status','Success')->whereBetween('created_at', [$startDate, $endDate])->sum('subtotal');
            $chartSucceededTransactions[] = $succeededTransactions;

            $cancledTransactions = Transaction::where('status','Blocked')->whereBetween('created_at', [$startDate, $endDate])->sum('subtotal');
            $chartCancledTransactions[] = $cancledTransactions;
            
        }
        $menu  = 'dashboard';

        return view('admin.dashboard.home', compact('menu','totalPendingTransactions','totalPendingVerifications','totalUser','totalBlogs','chartLables','chartUsers','chartSucceededTransactions','chartCancledTransactions'));
    }

    public function thirtyDaysNameList()
    {
        return Collection::times(31, function ($index) {
            return Carbon::now()->subDays($index)->format('d M');
        })->reverse()->values()->toArray();
    }
}
