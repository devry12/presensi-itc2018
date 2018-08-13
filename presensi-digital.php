<?php
require_once "layout/header.php"

?>

        <h2>Presensi Digital Interactive Media</h2>
        <video class="video-fluid z-depth-1 center" id="camera" width="300px" autoplay></video>
        <input type="text" class="form-control inputan" name="presensi" id="hasil"> <button class="add btn btn-primary">Add</button>

        <div class="card">
            <div class="card-body">

                <!--Table-->
                <table class="table table-hover table-responsive-md table-fixed" id="table-digital">

                    <!--Table head-->
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Telephone</th>
                            <th>Email</th>
                            <th>Nim</th>
                        </tr>
                      </thead>

                    <!--Table head-->

                    <!--Table body-->
                    <tbody id="hasilpresensi">

                    </tbody>
                    <!--Table body-->

                </table>
                <!--Table-->

            </div>
        </div>

</div>

</body>

<?php require_once 'layout/footer.php'; ?>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                    $(this).toggleClass('active');
                });
            });
        </script>

<script>

    $(document).ready(function () {
         $("#hasilpresensi").load('read-digital.php')
        var video =
            document.getElementById('camera');
            var audio = new Audio('sound/scan.mp3');


        QCodeDecoder()
            .decodeFromCamera(video, function (er, res) {
                var data = $('.inputan').serialize();
                if (res !=undefined) {
                    $('#hasil').val(res);
                     $.playSound('sound/scan.mp3');
                     $.ajax({
                        type: "POST",
                        url: 'create-digital.php',
                        data: data,
                        success: function(data) {
                            console.log(data);
                            if ($.trim(data) == "berhasil") {
                                $("#hasilpresensi").load('read-digital.php')
                                $.toaster({

                                    // toast message
                                    message : 'Presensi Berhasil',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'success'

                                    });
                            }else if ($.trim(data) == "salah") {
                                    $.toaster({

                                    // toast message
                                    message : 'Divisi Salah',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'warning'

                                    });
                            } else if ($.trim(data) == "sudah") {
                                                              $.toaster({

                                    // toast message
                                    message : 'Sudah Presensi',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'info'

                                    });
                            }else if ($.trim(data) == "bukan") {
                                                              $.toaster({

                                    // toast message
                                    message : 'Anda salah gelombang, ini untuk gelombang <?=$_SESSION['hari']?> ',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'warning'

                                    });
                            }else {

                                $.toaster({

                                    // toast message
                                    message : 'Presensi Gagal',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'danger'

                                    });
                            }
                        }
                     })
                }

            });
        });



$( ".add" ).click(function() {
     var data = $('.inputan').serialize();
                     $.playSound('sound/scan.mp3');
                     $.ajax({
                        type: "POST",
                        url: 'create-digital.php',
                        data: data,
                        success: function(data) {
                            console.log(data);
                            if ($.trim(data) == "berhasil") {
                                $("#hasilpresensi").load('read-data.php')
                                $.toaster({

                                    // toast message
                                    message : 'Presensi Berhasil',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'success'

                                    });
                            }else if ($.trim(data) == "salah") {
                                    $.toaster({

                                    // toast message
                                    message : 'Divisi Salah',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'warning'

                                    });
                            } else if ($.trim(data) == "sudah") {
                                                              $.toaster({

                                    // toast message
                                    message : 'Sudah Presensi',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'info'

                                    });
                            }else if ($.trim(data) == "bukan") {
                                                              $.toaster({

                                    // toast message
                                    message : 'Anda salah gelombang, ini untuk gelombang <?=$_SESSION['hari']?> ',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'warning'

                                    });
                            }else {

                                $.toaster({

                                    // toast message
                                    message : 'Presensi Gagal',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'danger'

                                    });
                            }
                        }
                     })
});

$(document).keypress(function(e) {
  if (e.which == 13) {

     var data = $('.inputan').serialize();
                     $.playSound('sound/scan.mp3');
                     $.ajax({
                        type: "POST",
                        url: 'create-digital.php',
                        data: data,
                        success: function(data) {
                            console.log(data);
                            if ($.trim(data) == "berhasil") {
                                $("#hasilpresensi").load('read-digital.php')
                                $.toaster({

                                    // toast message
                                    message : 'Presensi Berhasil',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'success'

                                    });
                            }else if ($.trim(data) == "salah") {
                                    $.toaster({

                                    // toast message
                                    message : 'Divisi Salah',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'warning'

                                    });
                            } else if ($.trim(data) == "sudah") {
                                                              $.toaster({

                                    // toast message
                                    message : 'Sudah Presensi',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'info'

                                    });
                            }else if ($.trim(data) == "bukan") {
                                                              $.toaster({

                                    // toast message
                                    message : 'Anda salah gelombang, ini untuk gelombang <?=$_SESSION['hari']?> ',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'warning'

                                    });
                            }else {

                                $.toaster({

                                    // toast message
                                    message : 'Presensi Gagal',

                                    // toast title
                                    title : 'Status',

                                    // or 'success', 'info', 'warning', 'danger'
                                    priority : 'danger'

                                    });
                            }
                        }
                     })
                   }

});
</script>
</html>
