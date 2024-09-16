<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;

Route::get('/clear', function () {
    Artisan::call('optimize:clear');
    return redirect('/');
});

Route::get('/', 'HomeController@index')->name('home');
Route::get('/blogs', 'BlogController@index')->name('blogs');
Route::get('/blog/{slug}', 'BlogController@details')->name('blog.details');

// user email check on registration
Route::post('user-registration-check-email', 'Auth\RegisterController@checkUserRegistrationEmail');

// Unauthenticated User
Route::group(['middleware' => ['no_auth:users', 'locale']], function () {
    Route::get('/login', 'Auth\LoginController@index')->name("login");
    Route::post('/authenticate', 'Auth\LoginController@authenticate');
    Route::get('register', 'Auth\RegisterController@create');
    Route::post('register/duplicate-phone-number-check', 'Auth\RegisterController@registerDuplicatePhoneNumberCheck');
    // Route::post('register/store-personal-info', 'Auth\RegisterController@storePersonalInfo')->name('register.personal.info');
    Route::post('register/store', 'Auth\RegisterController@store')->name('register.store');
    Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');
    Route::view('forget-password', 'frontend.auth.forgetPassword')->name('user.forget_password');
    Route::post('forget-password', 'Auth\ForgotPasswordController@forgetPassword');
    Route::get('password/resets/{token}', 'Auth\ForgotPasswordController@verifyToken');
    Route::post('confirm-password', 'Auth\ForgotPasswordController@confirmNewPassword');
});

//2fa
Route::group(['middleware' => ['guest:users', 'locale', 'check-user-inactive'], 'namespace' => 'Users'], function () {
    Route::get('2fa', 'CustomerController@view2fa');
    Route::post('2fa/verify', 'CustomerController@verify2fa')->name('2fa-verify.store');
    Route::get('google2fa', 'CustomerController@viewGoogle2fa')->name('google2fa');
    Route::post('google2fa/verify', 'CustomerController@verifyGoogle2fa')->name('2fa-verify.google_authenticator');
    Route::post('google2fa/verifyGoogle2faOtp', 'CustomerController@verifyGoogle2faOtp')->name('2fa-verify.google_otp');
});

// Authenticated User
Route::group(['middleware' => ['guest:users', 'locale', 'twoFa', 'check-user-inactive'], 'namespace' => 'Users'], function () {
    Route::get('dashboard', 'CustomerController@dashboard')->name('user.dashboard');
    // Route::get('wallet-list', 'CustomerController@getWallets')->name('user.wallets.index');

    Route::get('/logout', 'CustomerController@logout')->name('user.logout');
    Route::get('check-user-status', 'CustomerController@checkUserStatus');
    Route::get('check-request-creator-suspended-status', 'CustomerController@checkRequestCreatorSuspendedStatus')->name('user.request_money.creator_suspend');
    Route::get('check-request-creator-inactive-status', 'CustomerController@checkRequestCreatorInactiveStatus')->name('user.request_money.creator_inactive');;
    Route::get('check-processed-by', 'CustomerController@checkProcessedBy')->name('');

    //Settings
    Route::group(['middleware' => ['permission:manage_setting']], function () {
        Route::get('profile', 'CustomerController@profile')->name('user.profiles.index');
        Route::get('profile/2fa', 'CustomerController@profileTwoFa')->name('user.setting.twoFa');;
        Route::post('profile/2fa/update', 'CustomerController@UpdateProfileTwoFa');
        Route::post('profile/2fa/ajaxTwoFa', 'CustomerController@ajaxTwoFa')->name('user.setting.2fa-verify.create');

        //add or update user's qr-code
        Route::post('profile/qr-code/add-or-update', 'CustomerController@addOrUpdateUserProfileQrCode')->name('user.profile.qrcode.update');
        Route::get('profile/qr-code-print/{id}/{printQrCode}', 'CustomerController@printUserQrCode')->name('user.profile.qrcode.print');

        //KYC
        Route::get('profile/personal-id', 'CustomerController@personalId')->name('user.setting.identitiy_verify');
        Route::post('profile/personal-id-update', 'CustomerController@updatePersonalId')->name('user.setting.identitiy_verify.update');
        Route::get('profile/personal-address', 'CustomerController@personalAddress')->name('user.setting.address_verify');
        Route::post('profile/personal-address-update', 'CustomerController@updatePersonalAddress')->name('user.setting.address_verify.update');
        Route::get('/kyc-proof-download/{fileName}/{fileType}', 'CustomerController@download')->name('user.setting.kyc_proof.download');

        //google2fa
        Route::post('profile/2fa/google2fa', 'CustomerController@google2fa')->name('user.setting.2fa-verify.google');
        Route::post('profile/2fa/google2fa/complete-google2fa-verification', 'CustomerController@completeGoogle2faVerification')->name('user.setting.2fa-verify.google_complete');
        Route::post('profile/2fa/google2fa/otp-verify', 'CustomerController@google2faOtpVerification')->name('user.setting.2fa-verify.google_otp');

        //2fa
        Route::post('profile/2fa/disabledTwoFa', 'CustomerController@disabledTwoFa')->name('user.setting.2fa-verify.disabled');
        Route::post('profile/2fa/ajaxTwoFaSettingsVerify', 'CustomerController@ajaxTwoFaSettingsVerify')->name('user.setting.2fa-verify.settings');
        Route::post('profile/2fa/check-phone', 'CustomerController@checkPhoneFor2fa')->name('user.setting.2fa-verify.phone');
        //

        Route::post('prifile/update_password', 'CustomerController@updateProfilePassword')->name('user.profile.password.update');
        Route::view('profile-image-upload', 'user.profile.index');
        Route::post('profile-image-upload', 'CustomerController@profileImage')->name('user.profile.image_upload');
        Route::post('profile/getVerificationCode', 'CustomerController@generatePhoneVerificationCode');
        Route::post('profile/complete-phone-verification', 'CustomerController@completePhoneVerification');
        Route::post('profile/add-phone-number', 'CustomerController@addPhoneNumberViaAjax');
        Route::post('profile/update-phone-number', 'CustomerController@updatePhoneNumberViaAjax');
        Route::post('profile/editGetVerificationCode', 'CustomerController@editGeneratePhoneVerificationCode');
        Route::post('profile/edit-complete-phone-verification', 'CustomerController@editCompletePhoneVerification');
        Route::post('profile/delete-phone-number', 'CustomerController@deletePhoneNumberViaAjax');
        Route::post('prifile/update', 'CustomerController@updateProfileInfo')->name('user.profile.update');
        Route::post('profile/duplicate-phone-number-check', 'CustomerController@userDuplicatePhoneNumberCheck')->name('user.profile.duplicate_check.phone');
        Route::post('profile/change-default-currency', 'CustomerController@updateDefaultCurrency')->name('user.profile.default_currency');
    });

});

/* Merchant Payment Start*/
Route::match(array('GET', 'POST'), 'payment/form', 'MerchantPaymentController@index')->name('user.merchant.payment_form');
Route::get('payment/method-form', 'MerchantPaymentController@showPaymentForm')->name('user.merchant.show_payment_form');
Route::get('payment/success', 'MerchantPaymentController@success')->name('merchant.payment.success');
Route::get('payment/fail', 'MerchantPaymentController@fail');


//stripe
Route::post('payment/stripe', 'MerchantPaymentController@stripePayment');
Route::post('standard-merchant/stripe-make-payment', 'MerchantPaymentController@stripeMakePayment');


Route::get('gateway-payment/success', 'MerchantPaymentController@paymentSuccess')->name('gateway.payment.success');

Route::get('gateway/payment/{gateway}', 'GatewayController@pay')->name('gateway.pay');
Route::post('gateway/confirm-payment', 'GatewayController@confirmPayment')->name('gateway.confirm_payment');
Route::match(array('GET', 'POST'), 'gateway/payment-verify/{gateway}', 'GatewayController@verify')->name('gateway.payment_verify');
Route::match(array('GET', 'POST'), 'gateway/payment-cancel/{gateway}', 'GatewayController@cancelPayment')->name('gateway.payment_cancel');


Route::get('download/package', 'ContentController@downloadPackage');
if (count(request()->segments()) <= 1) {
    Route::get('{url}', 'ContentController@pageDetail')->where('url', urlRouteExcept());
}

