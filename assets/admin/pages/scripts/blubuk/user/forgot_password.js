var ForgotPassword = function () {
    // validation using icons
    var handleValidation = function() {
        // for more info visit the official plugin documentation: 
            // http://docs.jquery.com/Plugins/Validation
            
            var form = $('#form_forgot_password');
            var error = $('.alert-danger', form);
            var success = $('.alert-success', form);

            form.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                ignore: "",  // validate all fields including form hidden input
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                },
                messages: {
                    email : {
                        required: "Email harus diisi.",
                        email: "Format email salah."
                    },             
                },

                invalidHandler: function (event, validator) { //display error alert on form submit              
                    success.hide();
                    error.show();
                    Metronic.scrollTo(error, -200);
                },

                errorPlacement: function (error, element) { // render error placement for each input type
                    var icon = $(element).parent('.input-icon').children('i');
                    icon.removeClass('fa-check').addClass("fa-warning");  
                    icon.attr("data-original-title", error.text()).tooltip({'container': 'body'});
                },

                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').removeClass("has-success").addClass('has-error'); // set error class to the control group   
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    
                },

                success: function (label, element) {
                    var icon = $(element).parent('.input-icon').children('i');
                    $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                    document.bgColor="lightgreen";
                    icon.removeClass("fa-warning").addClass("fa-check");
                },
                
                submitHandler: function (form) {
                    info.show();
                    success.hide();
                    error.hide();
                    $('#submit').addClass("disabled");
                    $.ajax({
                        type: "post",
                        dataType: "json",
                        url: "forgot_password",
                        data: {
                            email: $("#email").val()
                        },
                        success: function(data){
                            $('.alert-' + data['status']).html('<button class="close" data-close="alert"></button>' + data['message']);
                            $('.alert-' + data['status']).show();
                            info.hide();
                            Recaptcha.reload();
                            $('#submit').removeClass("disabled");
                            window.location.replace('forgot_password');
                        },
                        error: function() {
                            $('.alert-danger').html('<button class="close" data-close="alert"></button><i class="fa fa-times"></i> Permintaan gagal diproses. Sistem sedang mengalami gangguan. Silahkan ulangi beberapa saat lagi.');
                            $('.alert-danger').show();
                            $('.alert-info').hide();
                            $('#submit').removeClass("disabled");     
                        }
                    })
                }

            });
    }

    return {
        //main function to initiate the module
        init: function () {
            handleValidation();
        }

    };
    
}();