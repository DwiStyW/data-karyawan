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
    <script src="../assets/js/code/modules/stock.js"></script>
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

        @media (max-width: 10000px) {
            .icon-dashboard {
                right: -40px;
                top: 70px;
            }
        }

        @media (max-width: 767px) {
            .icon-dashboard {
                right: -40px;
                top: 40px;
            }
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
            <div class="row mb-4">
                <a href="/master" class="col-lg-4 col-md-4 col-12 mb-3" style="text-decoration:none;">
                    <div style="width:95%">
                        <div class="p-3 bg-warning rounded shadow" style="--bs-bg-opacity: .8;">
                            <div class="card-body text-center position-relative">
                                <h3 class="card-title mb-1">Jumlah Karyawan</h3>
                                <h6 class="card-text mb-2">Tanggal : {{ date('d-m-Y') }}</h6>
                                <h1 class="text-center mt-2 mb-2"><b>{{ $jumkar }}</b></h1>
                                <svg class="position-absolute icon-dashboard" xmlns="http://www.w3.org/2000/svg"
                                    width="90" height="90" fill="#866500" class="bi bi-people-fill"
                                    viewBox="0 0 16 16">
                                    <path
                                        d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </a>
                <a class="col-lg-4 col-md-4 col-12 mb-3" style="text-decoration:none;" data-bs-toggle="modal"
                    data-bs-target="#apoteker">
                    <div style="width:95%">
                        <div class="p-3 bg-warning rounded shadow" style="--bs-bg-opacity: .6;">
                            <div class="card-body text-center position-relative">
                                <h3 class="card-title mb-1">Jumlah Apoteker Aktif</h3>
                                <h6 class="card-text mb-2">Tanggal : {{ date('d-m-Y') }}</h6>
                                <h1 class="text-center mt-2 mb-2 "><b>{{ count($apoteker) }}</b></h1>
                                <svg class="position-absolute icon-dashboard" xmlns="http://www.w3.org/2000/svg"
                                    width="90" height="90" fill="#866500" class="bi bi-capsule"
                                    viewBox="0 0 16 16">
                                    <path
                                        d="M1.828 8.9 8.9 1.827a4 4 0 1 1 5.657 5.657l-7.07 7.071A4 4 0 1 1 1.827 8.9Zm9.128.771 2.893-2.893a3 3 0 1 0-4.243-4.242L6.713 5.429l4.243 4.242Z" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </a>
                <a class="col-lg-4 col-md-4 col-12 mb-3" style="text-decoration:none;" data-bs-toggle="modal"
                    data-bs-target="#pensiun">
                    <div style="width:95%">
                        <div class="p-3 bg-warning rounded shadow" style="--bs-bg-opacity: .4;">
                            <div class="card-body text-center position-relative">
                                <h3 class="card-title mb-1">Karyawan Pensiun</h3>
                                <h6 class="card-text mb-2">Tahun : {{ date('Y') }}</h6>
                                <h1 class="text-center mt-2 mb-2"><b>
                                        @if (isset($pensiun[0]))
                                            {{ $pensiun[0] }}
                                        @else
                                            {{ 0 }}
                                        @endif
                                    </b></h1>
                                <svg class="position-absolute icon-dashboard" xmlns="http://www.w3.org/2000/svg"
                                    width="90" height="90" fill="#866500" class="bi bi-person-fill-exclamation"
                                    viewBox="0 0 16 16">
                                    <path
                                        d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z" />
                                    <path
                                        d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-3.5-2a.5.5 0 0 0-.5.5v1.5a.5.5 0 0 0 1 0V11a.5.5 0 0 0-.5-.5Zm0 4a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1Z" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="row mt-4">
                <div id="turnover"></div>
            </div>
            <div class="row mt-4">
                <div id="container"></div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-6 col-md-6 col-12" id="column-pend">
                </div>
                <div class="col-lg-6 col-md-6 col-12" id="pie-gender">
                </div>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

    <div class="modal fade" id="apoteker" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Apoteker aktif Tahun : {{ date('Y') }}
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="table-responsive">
                        <table id="table" width="100%" class="table table-striped table-bordered ">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th data-priority="1">No</th>
                                    <th data-priority="1">Nama</th>
                                    <th data-priority="3">No KTP</th>
                                    <th data-priority="3">Tempat Lahir</th>
                                    <th data-priority="3">Tanggal Lahir</th>
                                    <th data-priority="3">Jenis Kelamin</th>
                                    <th data-priority="3">Alamat</th>
                                    <th data-priority="3">No Hp</th>
                                    <th data-priority="3">Agama</th>
                                    <th data-priority="3">Jabatan</th>
                                    <th data-priority="3">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($dataap as $Tm)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td><a href="/detailmaster/{{ $Tm['id'] }}">{{ $Tm['nama'] }}</a></td>
                                        <td>{{ $Tm['nik'] }}</td>
                                        <td>{{ $Tm['tempat_lahir'] }}</td>
                                        <td>{{ $Tm['tanggal_lahir'] }}</td>
                                        <td>{{ $Tm['jenis_kelamin'] }}</td>
                                        <td>{{ $Tm['alamat'] }}</td>
                                        <td>{{ $Tm['no_hp'] }}</td>
                                        <td>{{ $Tm['agama'] }}</td>
                                        <td>{{ $Tm['nama_jabatan'] }}</td>
                                        <td>{{ $Tm['golongan'] }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="pensiun" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Karyawan pensiun Tahun : {{ date('Y') }}
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="table-responsive">
                        <table id="table" width="100%" class="table table-striped table-bordered ">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th data-priority="1">No</th>
                                    <th data-priority="1">Nama</th>
                                    <th data-priority="3">No KTP</th>
                                    <th data-priority="3">Tempat Lahir</th>
                                    <th data-priority="3">Tanggal Lahir</th>
                                    <th data-priority="3">Jenis Kelamin</th>
                                    <th data-priority="3">Alamat</th>
                                    <th data-priority="3">No Hp</th>
                                    <th data-priority="3">Agama</th>
                                    <th data-priority="3">Jabatan</th>
                                    <th data-priority="3">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($datamp as $Tm)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td><a href="/detailmaster/{{ $Tm['id'] }}">{{ $Tm['nama'] }}</a></td>
                                        <td>{{ $Tm['nik'] }}</td>
                                        <td>{{ $Tm['tempat_lahir'] }}</td>
                                        <td>{{ $Tm['tanggal_lahir'] }}</td>
                                        <td>{{ $Tm['jenis_kelamin'] }}</td>
                                        <td>{{ $Tm['alamat'] }}</td>
                                        <td>{{ $Tm['no_hp'] }}</td>
                                        <td>{{ $Tm['agama'] }}</td>
                                        <td>{{ $Tm['nama_jabatan'] }}</td>
                                        <td>{{ $Tm['golongan'] }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<!-- Script -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#table').DataTable({
            processing: true,
            deferRender: true,
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"]
            ],
            buttons: [{
                    extend: 'excelHtml5',
                    title: 'Data export Karyawan'
                },
                {
                    extend: 'pdfHtml5',
                    title: 'Data export Karyawan'
                }
            ],
            language: {
                paginate: {
                    previous: '‹',
                    next: '›'
                },
                aria: {
                    paginate: {
                        previous: 'Previous',
                        next: 'Next'
                    }
                }
            },
            pagingType: 'simple_numbers',
            responsive: true,
            dom: '<"rowt justify-content-between"<l><"rowt"<f><B>>>t<"rowt justify-content-between"ip>',
        });
    });
</script>
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
    // console.log(@json($datapend));
    var datagender = @json($datagender);
    var datapend = @json($datapend);

    // console.log(datariwmasuktahun);
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

    var seriesOptions = [],
        seriesCounter = 0,
        names = ['Karyawan masuk', 'Karyawan keluar'];

    /**
     * Create the chart when all data is loaded
     * @return {undefined}
     */
    function createChart() {

        Highcharts.stockChart('turnover', {

            chart: {
                height: 400
            },

            title: {
                text: 'Turn Over Karyawan'
            },
            rangeSelector: {
                selected: 4
            },
            yAxis: {
                plotLines: [{
                    width: 2,
                    color: 'silver'
                }]
            },
            tooltip: {
                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
                split: true
            },

            series: seriesOptions
        });
    }

    function success(data) {
        var name = 'Karyawan ' + this.url.match(/(masuk|keluar)/)[0];
        var i = names.indexOf(name);
        console.log(i);
        seriesOptions[i] = {
            name: name,
            data: data
        };

        // As we're loading the data asynchronously, we don't know what order it
        // will arrive. So we keep a counter and create the chart when all the data is loaded.
        seriesCounter += 1;

        if (seriesCounter === names.length) {
            createChart();
        }
    }

    Highcharts.getJSON(
        'http://127.0.0.1:8000/api/masuk',
        success
    );
    Highcharts.getJSON(
        'http://127.0.0.1:8000/api/keluar',
        success
    );
</script>


</html>
