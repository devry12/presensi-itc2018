<?php 
require_once "layout/header.php";

$count_office = select_data_office();
$count_db = select_data_db();
$count_data = select_data_data();
$count_digital = select_data_digital();

$office = mysqli_num_rows($count_office);
$db = mysqli_num_rows($count_db);
$data = mysqli_num_rows($count_data);
$digital = mysqli_num_rows($count_digital);
?>

<div class="row">
    <div class="col-md-12">
        <div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">
            <div class="text-white text-center py-5 px-4 my-5">
                <div>
                    <h1 class="card-title pt-3 mb-5 font-bold">
                        <strong>Selamat datang di presensi ITC 2018</strong>
                    </h1>
                        <p class="mx-5 mb-5" style="color:white">Introduction To Computer (ITC) adalah kegiatan rutin Universitas Amikom Yogyakarta yang dikhususkan bagi mahasiswa baru untuk
                        mendalami dunia komputer sebelum perkuliahan reguler. Pelaksanaan kegiatan ini diserahkan kepada Unit Kegiatan Mahasiswa
                        (UKM) Amikom Computer Club (AMCC).
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

<div class="container">
<input type="text" id="office-count" value="<?=$office?>" hidden>
<input type="text" id="db-count" value="<?=$db?>" hidden>
<input type="text" id="data-count" value="<?=$data?>" hidden>
<input type="text" id="digital-count" value="<?=$digital?>" hidden>
<div class="card card-body">
<canvas id="presensi-chart" ></canvas>
</div>
    
</div>




</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
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

    var office = $("#office-count").val()
    var db = $("#db-count").val()
    var data = $("#data-count").val()
    var digital = $("#digital-count").val()

    var ctx = document.getElementById("presensi-chart").getContext('2d');
    var myChart     = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Office Administration", "Database Management", "Data Scientist", "Digital Interactive Media"],
            datasets: [{
                label: 'Total Presensi',
                data: [office, db, data, digital],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>

</html>