
                $allowed_ext    = array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip');
                $data['dokumen']      = $_FILES['dokumen']['name'];
                $file_ext       = strtolower(end(explode('.', $data['dokumen'])));
                $file_size      = $_FILES['dokumen']['size'];
                $file_tmp       = $_FILES['dokumen']['tmp_name'];

                // if(in_array($file_ext, $allowed_ext) === true){
                //     $lokasi = 'dokumen/'.time().'.'.$file_ext;
                //     move_uploaded_file($file_tmp, $lokasi);
                // }

                $lokasi = 'dokumen/'.$_FILES['dokumen']['name'].'.'.$file_ext;
                move_uploaded_file($file_tmp, $lokasi);
