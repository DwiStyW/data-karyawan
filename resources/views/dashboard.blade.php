<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../assets/ui/img/ikon.png">
    <link rel="stylesheet" href="../assets/ui/bootstrap-5.2.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/ui/bootstrap-icons-1.10.2/bootstrap-icons.css">
    <link rel="stylesheet" href="../assets/ui/css/global.css">
    <script src="../assets/js/code/highcharts.js"></script>
    <script src="../assets/js/code/modules/drilldown.js"></script>
    <script src="../assets/js/code/modules/exporting.js"></script>
    <script src="../assets/js/code/modules/export-data.js"></script>
    <script src="../assets/js/code/modules/accessibility.js"></script>
    <style>
        .highcharts-credits {
            display: none !important;
        }

        .highcharts-title {
            font-size: 14px !important
        }
    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Dashboard</h3>
            </header>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-12 mb-3">
                    <div class="card text-white" style="background-color:darkblue;height: 20rem;">
                        <div class="card-body text-center">
                            <h3 class="card-title text-white">Jumlah Karyawan</h3>
                            <p class="card-text mb-5">Tanggal : {{ date('d-m-Y') }}</p>
                            <h1 class="text-center text-white mt-5 mb-5"><b>{{ $jumkar }}</b></h1>
                            <a href="/master" class="btn btn-primary mt-4">Detail</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-12 mb-3">
                    <div class="card text-white" style="background-color:grey;height: 20rem;">
                        <div class="card-body text-center">
                            <h3 class="card-title text-white">Jumlah Apoteker Aktif</h3>
                            <p class="card-text mb-5">Tanggal : {{ date('d-m-Y') }}</p>
                            <h1 class="text-center mt-5 mb-5 text-white"><b>{{ count($apoteker) }}</b></h1>
                            <a href="#" class="btn btn-primary mt-4">Detail</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-12 mb-3">
                    <div class="card" style="background-color:gainsboro;height: 20rem;">
                        <div class="card-body text-center">
                            <h3 class="card-title">Karyawan Pensiun</h3>
                            <p class="card-text mb-5">Tahun : {{ date('Y') }}</p>
                            <h1 class="text-center mt-5 mb-5"><b>999</b></h1>
                            <a href="#" class="btn btn-primary mt-4">Detail</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-lg-6 col-md-6 col-12" id="column-pend">
                </div>
                <div class="col-lg-6 col-md-6 col-12" id="pie-gender">
                </div>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).on("scroll", function() {
        if ($(document).scrollTop() > 100) {
            $(".navbar").addClass("border-bottom");
        } else {
            $(".navbar").removeClass("border-bottom");
        }
    });
    $('input').hover(function() {
        $(this).select();
    });
</script>
<script type="text/javascript">
    console.log(@json($datapend));
    var datagender = @json($datagender);
    var datapend = @json($datapend);
    // console.log(data);
    Highcharts.chart('pie-gender', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Persentase karyawan bedasarkan gender',
            align: 'left'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.y}</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            name: 'jumlah',
            colorByPoint: true,
            data: datagender
        }]
    });

    Highcharts.chart('column-pend', {
        chart: {
            type: 'column'
        },
        title: {
            align: 'left',
            text: 'Persentase karyawan bedasarkan pendidikan terakhir'
        },
        accessibility: {
            announceNewData: {
                enabled: true
            }
        },
        xAxis: {
            type: 'category'
        },
        yAxis: {
            title: {
                text: 'Total Karyawan'
            }

        },
        legend: {
            enabled: false
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true,
                    format: '{point.y}'
                }
            }
        },

        tooltip: {
            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b> of total<br/>'
        },
        series: [{
            name: 'Pendidikan',
            colorByPoint: true,
            data: datapend
        }]
    });
</script>

</html>
