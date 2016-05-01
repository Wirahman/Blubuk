var Pendaftaran = function() {
    var handleDatePickers = function() {
        if (jQuery().datepicker) {
            $('.date-picker').datepicker({
                rtl: Metronic.isRTL(),
                orientation: "left",
                autoclose: true
            });
            //$('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
        }

        /* Workaround to restrict daterange past date select: http://stackoverflow.com/questions/11933173/how-to-restrict-the-selectable-date-ranges-in-bootstrap-datepicker */
    }

    var handlePasswordStrengthChecker = function() {
        var initialized = false;
        var input = $("#password");

        input.keydown(function() {
            if (initialized === false) {
                // set base options
                input.pwstrength({
                    raisePower: 1.4,
                    minChar: 8,
                    verdicts: ["Weak", "Normal", "Medium", "Strong", "Very Strong"],
                    scores: [17, 26, 40, 50, 60]
                });

                // add your own rule to calculate the password strength
                input.pwstrength("addRule", "demoRule", function(options, word, score) {
                    return word.match(/[a-z].[0-9]/) && score;
                }, 10, true);

                // set as initialized 
                initialized = true;
            }
        });
    }

    // validation using icons
    var handleValidation = function() {
        // for more info visit the official plugin documentation: 
        // http://docs.jquery.com/Plugins/Validation
        var form = $('#form_pendaftaran');
        var error = $('.alert-danger');
        var success = $('.alert-success');
        var info = $('.alert-info');

        form.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "", // validate all fields including form hidden input
            rules: {
                name: {
                    required: true,
                    minlength: 2
                },
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 8
                },
                confirm_password: {
                    required: true,
                    equalTo: "#password"
                }
            },
            messages: {
                name: {
                    required: "Nama harus diisi.",
                    minlength: jQuery.validator.format("Nama harus terdiri dari minimal {0} karakter.")
                },
                email: {
                    required: "Email harus diisi.",
                    email: "Format email salah."
                },
                password: {
                    required: "Password harus diisi.",
                    minlength: jQuery.validator.format("Password harus terdiri dari minimal {0} karakter.")
                },
                confirm_password: {
                    required: "Password (konfirmasi) harus diisi.",
                    equalTo: "Password (konfirmasi) harus sama dengan password."
                }
            },
            invalidHandler: function(event, validator) { //display error alert on form submit              
                success.hide();
                error.show();
                Metronic.scrollTo(error, -200);
            },
            errorPlacement: function(error, element) { // render error placement for each input type
                var icon = $(element).parent('.input-icon').children('i');
                icon.removeClass('fa-check').addClass("fa-warning");
                icon.attr("data-original-title", error.text()).tooltip({'container': 'body'});
            },
            highlight: function(element) { // hightlight error inputs
                $(element)
                        .closest('.form-group').removeClass("has-success").addClass('has-error'); // set error class to the control group   
            },
            unhighlight: function(element) { // revert the change done by hightlight

            },
            success: function(label, element) {
                var icon = $(element).parent('.input-icon').children('i');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                icon.removeClass("fa-warning").addClass("fa-check");
            },
            submitHandler: function(form) {
                info.show();
                success.hide();
                error.hide();
                $('#submit').addClass("disabled");
                $.ajax({
                    type: "post",
                    dataType: "json",
                    url: "pendaftaran_user",
                    data: new FormData(this),
                    success: function(data) {
                        $('.alert-' + data['status']).html('<button class="close" data-close="alert"></button>' + data['message']);
                        $('.alert-' + data['status']).show();
                        info.hide();
                        $('#submit').removeClass("disabled");
                        window.location.replace('wait_confirmation');
                    },
                    error: function() {
                        $('.alert-danger').html('<button class="close" data-close="alert"></button><i class="fa fa-times"></i> Permintaan gagal diproses. Sistem sedang mengalami gangguan. Silahkan ulangi beberapa saat lagi.');
                        $('.alert-danger').show();
                        $('.alert-info').hide();
                        $('#submit').removeClass("disabled");
                    }
                });

            }
        });


    }

    return {
        //main function to initiate the module
        init: function() {
            handleDatePickers();
            handleValidation();
            handlePasswordStrengthChecker();
        }

    };

}();