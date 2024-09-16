<?php

use App\Http\Helpers\Common;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;

// Unauthenticated Admin
Route::group(['middleware' => ['no_auth:admin', 'locale', 'ip_middleware']], function ()
{
    Route::get('/', function ()
    {
        return view('admin.auth.login');
    })->name('admin');

    Route::post('adminlog', 'AdminController@authenticate');
    Route::view('forget-password', 'admin.auth.forgetPassword');
    Route::post('forget-password', 'AdminController@forgetPassword');
    Route::get('password/resets/{token}', 'AdminController@verifyToken');
    Route::post('confirm-password', 'AdminController@confirmNewPassword');
});

// Authenticated Admin
Route::group(['middleware' => ['guest:admin', 'locale', 'ip_middleware']], function ()
{
    Route::get('/clear-cache', function () {
        Artisan::call('cache:clear');
        Artisan::call('view:clear');
        Artisan::call('config:clear');
        Artisan::call('route:clear');
        (new Common())->one_time_message('success',__('Cache successfully cleared.'));
        return back();
    })->name('clear.cache');

    Route::get('home', 'DashboardController@home')->name('dashboard');
    Route::get('adminlogout', 'AdminController@logout');
    Route::get('profile', 'AdminController@profile');
    Route::post('update-admin/{id}', 'AdminController@update');

    Route::get('change-password', 'AdminController@changePassword');
    Route::post('change-password', 'AdminController@updatePassword');

    Route::post('check-password', 'AdminController@passwordCheck');

    // // users
    Route::get('users', 'UserController@index')->middleware(['permission:view_user']);
    Route::get('users/create', 'UserController@create')->middleware(['permission:add_user']);
    Route::post('users/store', 'UserController@store');
    Route::get('users/view/{id}', 'UserController@show');
    Route::get('users/edit/{id}', 'UserController@edit')->middleware(['permission:edit_user']);
    Route::post('users/update', 'UserController@update');
    Route::get('users/delete/{id}', 'UserController@destroy')->middleware(['permission:delete_role']);

    Route::post('email_check', 'UserController@postEmailCheck');
    Route::post('duplicate-phone-number-check', 'UserController@duplicatePhoneNumberCheck');
    Route::get('users/transactions/{id}', 'UserController@eachUserTransaction');


    // Transactions
    Route::get('transactions', 'TransactionController@index')->middleware(['permission:view_transaction']);
    Route::get('transactions/edit/{id}', 'TransactionController@edit')->middleware(['permission:edit_transaction']);
    Route::post('transactions/update/{id}', 'TransactionController@update');
    Route::get('transactions_user_search', 'TransactionController@transactionsUserSearch');
    Route::get('transactions/csv', 'TransactionController@transactionCsv');
    Route::get('transactions/pdf', 'TransactionController@transactionPdf');



    // Verifications - identity-proofs
    Route::get('identity-proofs', 'IdentityProofController@index')->middleware(['permission:view_identity_verfication']);
    Route::get('identity-proofs/csv', 'IdentityProofController@identityProofsCsv');
    Route::get('identity-proofs/pdf', 'IdentityProofController@identityProofsPdf');
    Route::get('identity-proofs/edit/{id}', 'IdentityProofController@identityProofEdit')->middleware(['permission:edit_identity_verfication']);
    Route::post('identity-proofs/update', 'IdentityProofController@identityProofUpdate');

    // Verifications - address-proofs
    Route::get('address-proofs', 'AddressProofController@index')->middleware(['permission:view_address_verfication']);
    Route::get('address-proofs/csv', 'AddressProofController@addressProofsCsv');
    Route::get('address-proofs/pdf', 'AddressProofController@addressProofsPdf');
    Route::get('address-proofs/edit/{id}', 'AddressProofController@addressProofEdit')->middleware(['permission:edit_address_verfication']);
    Route::post('address-proofs/update', 'AddressProofController@addressProofUpdate');

    // currencies
    Route::get('settings/currency', 'CurrencyController@index')->middleware(['permission:view_currency']);
    Route::match(array('GET', 'POST'), 'settings/add_currency', 'CurrencyController@add')->middleware(['permission:add_currency']);
    Route::match(array('GET', 'POST'), 'settings/edit_currency/{id}', 'CurrencyController@update')->middleware(['permission:edit_currency']);
    Route::get('settings/delete_currency/{id}', 'CurrencyController@delete')->middleware(['permission:delete_currency']);
    Route::post('currency/image_delete', 'CurrencyController@deleteImage');
    Route::post('settings/currency/delete-currency-logo', 'CurrencyController@deleteCurrencyLogo');

    //Currency PaymentMethod Settings
    Route::get('settings/payment-methods/{tab}/{id}', 'CurrencyPaymentMethodController@paymentMethodList')->middleware(['permission:edit_currency']);
    Route::post('settings/payment-methods/update-paymentMethod-Credentials', 'CurrencyPaymentMethodController@updatePaymentMethodCredentials');
    Route::post('settings/get-payment-methods-details', 'CurrencyPaymentMethodController@getPaymentMethodsDetails');
    Route::post('settings/get-payment-methods-specific-currency-details', 'CurrencyPaymentMethodController@getPaymentMethodsSpecificCurrencyDetails');

    //bank
    Route::post('settings/payment-methods/add-bank', 'CurrencyPaymentMethodController@addBank');
    Route::post('settings/payment-methods/update-bank', 'CurrencyPaymentMethodController@updateBank');
    Route::post('settings/payment-methods/delete-bank', 'CurrencyPaymentMethodController@deleteBank');
    Route::post('settings/payment-methods/getCpmId', 'CurrencyPaymentMethodController@getCpmId');
    Route::post('settings/payment-methods/show-bank-details', 'CurrencyPaymentMethodController@showbankDetails');
    Route::post('settings/payment-methods/delete-bank-logo', 'CurrencyPaymentMethodController@deleteBankLogo');


    //Pages
    Route::get('settings/pages', 'PagesController@index')->middleware(['permission:view_page']);
    Route::get('settings/page/add', 'PagesController@add')->middleware(['permission:add_page']);
    Route::post('settings/page/store', 'PagesController@store');
    Route::get('settings/page/edit/{id}', ['uses' => 'PagesController@edit', 'as' => 'admin.page.edit'])->middleware(['permission:edit_page']);
    Route::post('settings/page/update', 'PagesController@update');
    Route::get('settings/page/delete/{id}', 'PagesController@delete')->middleware(['permission:delete_page']);

    
    //blogs
    Route::get('blogs', 'BlogController@index')->middleware(['permission:view_page']);
    Route::get('blog/add', 'BlogController@add')->middleware(['permission:add_page']);
    Route::post('blog/store', 'BlogController@store');
    Route::get('blog/edit/{id}', ['uses' => 'BlogController@edit', 'as' => 'admin.page.edit'])->middleware(['permission:edit_page']);
    Route::post('blog/update', 'BlogController@update');
    Route::get('blog/delete/{id}', 'BlogController@delete')->middleware(['permission:delete_page']);

    
    //Pages
    Route::get('settings/feedbacks', 'FeedbackController@index')->middleware(['permission:view_page']);
    Route::get('settings/feedback/add', 'FeedbackController@add')->middleware(['permission:add_page']);
    Route::post('settings/feedback/store', 'FeedbackController@store');
    Route::get('settings/feedback/edit/{id}', ['uses' => 'FeedbackController@edit', 'as' => 'admin.page.edit'])->middleware(['permission:edit_page']);
    Route::post('settings/feedback/update', 'FeedbackController@update');
    Route::get('settings/feedback/delete/{id}', 'FeedbackController@delete')->middleware(['permission:delete_page']);


    // Crypto Providers
    Route::get('crypto-providers/{provider?}', 'CryptoProviderController@index')->name('admin.crypto_providers.list')->middleware(['permission:view_crypto_provider']);
    Route::post('crypto-provider/{provider}/status-change', 'CryptoProviderController@statusChange')->name('admin.crypto_providers.status_change')->middleware(['permission:edit_crypto_provider']);

});