var WaitConfirmation = function () {
	var handleResendEmail = function () {
		var send = $("#resendEmail");
        send.click(function() {
			$('.alert-info').show();
			$('.alert-success').hide();
			$('.alert-danger').hide();
			send.addClass("disabled");
			$.ajax({
				dataType: "json",
				url: "resend_email",
				success: function(data){					
					$('.alert-' + data['status']).html('<button class="close" data-close="alert"></button>' + data['message']);
					$('.alert-' + data['status']).show();
					$('.alert-info').hide();
					send.removeClass("disabled");
				}
			});
		});
    }

    return {
        //main function to initiate the module
        init: function () {
            handleResendEmail();
        }

    };

}();