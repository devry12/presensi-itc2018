<?php 
require_once "layout/header.php"

?>

        <h2>Presensi</h2>
        <video class="video-fluid z-depth-1 center" id="camera" width="300px" autoplay></video>
        <input type="text" class="form-control" id="hasil"> <button class="add btn btn-primary">Add</button>

        <div class="card">
            <div class="card-body">
        
                <!--Table-->
                <table class="table table-hover table-responsive-md table-fixed">
        
                    <!--Table head-->
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Telephone</th>
                            <th>Email</th>
                            <th>Nim</th>
                            <th>Divisi</th>
                        </tr>
                    </thead>
                    <!--Table head-->
        
                    <!--Table body-->
                    <tbody>
                        <tr>
                            <th scope="row">4</th>
                            <td>Jerry</td>
                            <td>Horwitz</td>
                            <td>Italy</td>
                            <td>Bari</td>
                            <td>Editor-in-chief</td>
                        </tr>
 
                    </tbody>
                    <!--Table body-->
        
                </table>
                <!--Table-->
        
            </div>
        </div>

</div>



    <!-- <div class="container">

        <div class="card">
            <h3 class="card-header primary-color white-text">Featured</h3>
            <div class="card-body">
                <div class="bagi">

                    <div class="row kiri">
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="hasil">
                        </div>
                    </div>
                    
                    <div class="row kanan">
                        <div class="col-sm-4">
                            <video class="video-fluid z-depth-1" id="camera" autoplay></video>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>

        
        
        
        <br>
        
        <br>
        <p id="gagal"></p>
    </div> -->










</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script src="core/qcode-decoder.min.js"></script>
<script src="sound/sound.js"></script>
<script src="assets/mdb/js/bootstrap.js"></script>
<script src="assets/mdb/js/mdb.js"></script>
<script src="assets/mdb/js/popper.min.js"></script>
<script src="https://unpkg.com/ionicons@4.1.1/dist/ionicons.js"></script>

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
        var video =
            document.getElementById('camera');
            var audio = new Audio('sound/scan.mp3');
        

        QCodeDecoder()
            .decodeFromCamera(video, function (er, res) {
                
                if (res !=undefined) {
                    console.log(res);
                    $('#hasil').val(res);
                     $('#gagal').html("");
                     $.playSound('sound/scan.mp3');
                }
                
            });
        });
    
</script>
</html>