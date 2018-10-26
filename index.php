<?php
require_once "layout/header.php";
// count day 1
$countday = array();
$countoffice   = array();
$countdb       = array();
$countdata     = array();
$countdigital  = array();
for ($i=1; $i <=10 ; $i++) {
$count_office = select_data_office($i);
$count_db = select_data_db($i);
$count_data = select_data_data($i);
$count_digital = select_data_digital($i);

$office = mysqli_num_rows($count_office);
$db = mysqli_num_rows($count_db);
$data = mysqli_num_rows($count_data);
$digital = mysqli_num_rows($count_digital);
$count = $office + $db + $data + $digital;

array_push($countday,$count);
array_push($countoffice,$office);
array_push($countdb,$db);
array_push($countdata,$data);
array_push($countdigital,$digital);
}
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
<div class="container ">
<div class="card card-body">
<canvas id="totaldata" ></canvas>
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

<!-- <script>

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
                label: "Total Presensi Hari ke <?=$_SESSION['hari']?>",
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
</script> -->

<script type="text/javascript">

var total = document.getElementById('totaldata')
var myLineChart = new Chart(total, {
type: 'line',
data: {
    labels: ['6 Agustus (1)', '7 Agustus (2)', '8Agustus (3)', '9 Agustus (4)', '11 Agustus (5)', '27 Agustus (6)', '16 Agustus (7)', '18 Agustus (8)', '30 Agustus (9)', '10 September (10)'],
    datasets: [{
        label: "Total Presensi",
        data: [<?=$countday[0]?>,<?=$countday[1]?>, <?=$countday[2]?>, <?=$countday[3]?>, <?=$countday[4]?>, <?=$countday[5]?>, <?=$countday[6]?>, <?=$countday[7]?>,<?=$countday[8]?>, <?=$countday[9]?>],
        backgroundColor: ['rgba(54, 162, 235, 0.2)'],
        borderColor:['rgba(54, 162, 235, 1)'],
        borderWidth: 1,

    }]
},
options: {
  responsive: true,
  maintainAspectRatio: false,
    title: {
        display: true,
        text: 'Total Peserta'
    },
    legend: {
        display: true,
        labels: {
            fontColor: 'rgb(60, 183, 200)'
        }
    }
}
});
</script>
<script type="text/javascript">

var total = document.getElementById('presensi-chart')
var myLineChart = new Chart(total, {
type: 'bar',
data: {
    labels: ['6 Agustus (1)', '7 Agustus (2)', '8Agustus (3)', '9 Agustus (4)', '11 Agustus (5)', '27 Agustus (6)', '16 Agustus (7)', '18 Agustus (8)', '30 Agustus (9)', '10 September (10)'],
    datasets: [{
        label: "Office Administration",
        data: [<?=$countoffice[0]?>,<?=$countoffice[1]?>,<?=$countoffice[2]?>,<?=$countoffice[3]?>,<?=$countoffice[4]?>,<?=$countoffice[5]?>,<?=$countoffice[6]?>,<?=$countoffice[7]?>,<?=$countoffice[8]?>,<?=$countoffice[9]?>,],
        backgroundColor: ['rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)'],
        borderColor:['rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)'],
        borderWidth: 1,

    },{
        label: "Database Management",
        data: [<?=$countdb[0]?>,<?=$countdb[1]?>, <?=$countdb[2]?>, <?=$countdb[3]?>, <?=$countdb[4]?>, <?=$countdb[5]?>, <?=$countdb[6]?>, <?=$countdb[7]?>,<?=$countdb[8]?>, <?=$countdb[9]?>],
        backgroundColor: ['rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)','rgba(255, 99, 132, 0.2)',],
        borderColor:['rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)','rgba(255,99,132,1)',],
        borderWidth: 1,

    },{
        label: "Digital Interactive Media",
        data: [<?=$countdigital[0]?>,<?=$countdigital[1]?>, <?=$countdigital[2]?>, <?=$countdigital[3]?>, <?=$countdigital[4]?>, <?=$countdigital[5]?>, <?=$countdigital[6]?>, <?=$countdigital[7]?>,<?=$countdigital[8]?>, <?=$countdigital[9]?>],
        backgroundColor: ['rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)','rgba(255, 206, 86, 0.2)',],
        borderColor:['rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)','rgba(255, 206, 86, 1)',],
        borderWidth: 1,

    },{
        label: "Data Scientist",
        data: [<?=$countdata[0]?>,<?=$countdata[1]?>, <?=$countdata[2]?>, <?=$countdata[3]?>, <?=$countdata[4]?>, <?=$countdata[5]?>, <?=$countdata[6]?>, <?=$countdata[7]?>,<?=$countdata[8]?>, <?=$countdata[9]?>],
        backgroundColor: ['rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)','rgba(170, 72, 230, 0.2)',],
        borderColor:['rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)','rgba(170, 72, 230, 1)',],
        borderWidth: 1,

    }]
},
options: {
  responsive: true,
  maintainAspectRatio: false,
    title: {
        display: true,
        text: 'Total Peserta'
    },
    legend: {
        display: true,
        labels: {
            fontColor: 'rgb(60, 183, 200)'
        }
    }
}
});
</script>
<p>dasasfsfsfa</p>
<p>dasasfsfsfa</p>
<p>dasasfsfsfa</p>

</html>
