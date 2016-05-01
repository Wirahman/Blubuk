var UpdateBiografi = function () {
    var handleDatePickers = function () {
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

    // validation using icons
    var handleValidation = function () {
        // for more info visit the official plugin documentation: 
        // http://docs.jquery.com/Plugins/Validation
        var form = $('#form_update_biografi');
        var error = $('.alert-danger');
        var success = $('.alert-success');
        var info = $('.alert-info');

        form.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "", // validate all fields including form hidden input
            
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
                icon.removeClass("fa-warning").addClass("fa-check");
            },
            
            submitHandler: function(form) {
                //size foto
                var foto = document.getElementById('foto');
                var fotoName = foto.value;
                var fotoExt = fotoName.substring(fotoName.lastIndexOf('.') + 1);
                var extAcc = fotoExt.toLowerCase();
                //size ktp
                var fup = document.getElementById('dokumen_edit_personal');
                var fileName = fup.value;
                var rawext = fileName.substring(fileName.lastIndexOf('.') + 1);
                var ext = rawext.toLowerCase();
                if (ext == "pdf" || ext == "jpg" || ext == "jpeg" || ext == "png" || ext == "")
                {
                    var fsize = $('#dokumen_edit_personal')[0].files[0].size;
                    if(fsize > 2097152){
                        bootbox.alert("Ukuran/size File Dokumen KTP Tidak boleh lebih dari 2Mb");
                        return;
                    }
                    if (extAcc == "jpg" || extAcc == "pdf" || extAcc == "png" || ext == "") {
                        var fsize = $('#foto')[0].files[0].size;
                        if (fsize > 2097152) {
                            bootbox.alert("Ukuran/size Foto Tidak boleh lebih dari 2Mb");
                            return;
                        }
                        $('#submit').addClass("disabled");
                        info.show();
                        success.hide();
                        error.hide();
                        $.ajax({
                            type: "post",
                            dataType: "json",
                            url: "buat_biografi",
                            data: new FormData(this),
                            success: function(data) {
                                $('.alert-' + data['status']).html('<button class="close" data-close="alert"></button>' + data['message']);
                                $('.alert-' + data['status']).show();
                                info.hide();
                                $('#submit').removeClass("disabled");
                                window.location.replace('data_personal');
                            },
                            error: function() {
                                $('.alert-danger').html('<button class="close" data-close="alert"></button><i class="fa fa-times"></i> Permintaan gagal diproses. Sistem sedang mengalami gangguan. Silahkan ulangi beberapa saat lagi.');
                                $('.alert-danger').show();
                                $('.alert-info').hide();
                                $('#submit').removeClass("disabled");
                            }
                        });
                    }else {
                        bootbox.alert("Extensi Foto hanya diperbolehkan jpg/jpeg/png");
                        fup.focus();
                        return;
                    }
                }
                else{
                    bootbox.alert("Extensi File Dokumen KTP hanya diperbolehkan pdf/jpg/jpeg/png");
                    fup.focus();
                    return;
                }
            }
        });
    }

    return {
        //main function to initiate the module
        init: function () {
            handleDatePickers();
            handleValidation();
        }

    };

}();