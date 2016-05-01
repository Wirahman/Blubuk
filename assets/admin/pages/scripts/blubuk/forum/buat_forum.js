var BuatForum = function () {

    // validation using icons
    var handleValidation = function () {
        // for more info visit the official plugin documentation: 
        // http://docs.jquery.com/Plugins/Validation
        var form = $('#form_buat_forum');
        var error = $('.alert-danger');
        var success = $('.alert-success');
        var info = $('.alert-info');

        form.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "", // validate all fields including form hidden input
            rules: {
                judul_forum: {
                    required: true
                },
                isi_forum: {
                    required: true
                }
            },
            messages: {
                judul_forum: {
                    required: "Harap Lengkapi Judul Forum Terlebih Dahulu..."
                },
                isi_forum: {
                    required: "Harap Lengkapi Isi Forum Terlebih Dahulu..."
                }
            },
            invalidHandler: function (event, validator) { //display error alert on form submit
                success.hide();
                error.show();
                Metronic.scrollTo(error, -200);
            },
            errorPlacement: function (error, element) { // render error placement for each input type
                var icon = $(element).parent('.input-icon').children('i');
                $('i').tooltip();
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
                //size ijazah
                var fup = document.getElementById('foto_forum');
                var fileName = fup.value;
                var rawext = fileName.substring(fileName.lastIndexOf('.') + 1);
                var ext = rawext.toLowerCase();
                if (ext == "pdf" || ext == "jpg" || ext == "jpeg" || ext == "png")
                {
                    var fsize = $('#foto_forum')[0].files[0].size;
                    // if (fsize > 2097152) {
                    //     bootbox.alert("Ukuran/size Foto Tidak boleh lebih dari 2Mb");
                    //     return;
                    // }
                    info.show();
                    success.hide();
                    error.hide();
                    $('#submit').addClass("disabled");
                    $.ajax({
                        type: "post",
                        dataType: "json",
                        url: "home/buat_forum",
                        data: new FormData(this),
                        success: function(data) {
                            $('.alert-' + data['status']).html('<button class="close" data-close="alert"></button>' + data['message']);
                            $('.alert-' + data['status']).show();
                            info.hide();
                            $('#submit').removeClass("disabled");
                            window.location.replace('index.php/home/buat_forum');
                        },
                        error: function() {
                            $('.alert-danger').html('<button class="close" data-close="alert"></button><i class="fa fa-times"></i> Permintaan gagal diproses. Sistem sedang mengalami gangguan. Silahkan ulangi beberapa saat lagi.');
                            $('.alert-danger').show();
                            $('.alert-info').hide();
                            $('#submit').removeClass("disabled");
                        }
                    });
                }
                // else if (ext == "")
                // {
                //     bootbox.alert("File Dokumen Ijazah harus diupload");
                //     fup.focus();
                //     return;
                // } 
                // else
                // {
                //     bootbox.alert("Extensi File Dokumen Ijazah hanya diperbolehkan pdf/jpg/jpeg/png");
                //     fup.focus();
                //     return;
                // }
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