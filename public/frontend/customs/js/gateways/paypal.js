
'use strict';

$('#payment-form').on('submit', function () {
    $('.spinner').removeClass('d-none');
    $("#paypal-button-submit").attr("disabled", true);
    $("#paypalSubmitBtnText").text(submitting);
});

