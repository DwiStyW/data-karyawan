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
            <div class="row">
                <a href="/master-kabag" class="col-lg-4 col-md-4 col-12 mb-3" style="text-decoration:none;">
                    <div style="width:95%">
                        <div class="p-3 bg-warning rounded shadow" style="--bs-bg-opacity: .8;">
                            <div class="card-body text-center position-relative">
                                <h3 class="card-title mb-1">Jumlah Karyawan</h3>
                                <h6 class="card-text mb-2">Tanggal : {{ date('d-m-Y') }}</h6>
                                <h1 class="text-center mt-2 mb-2"><b>{{ count($master) }}</b></h1>
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

                <div class="col-lg-4 col-md-12 col-12 position-relative">
                    <div class="card border-0 rounded-0 shadow bg-light h-auto p-3">
                        <h4 class="card-title mb-1">Absensi Karyawan</h4>
                        <h6 class="card-text mb-2">Tanggal : {{ date('d-m-Y') }}</h6>
                        <div class="mt-2">
                            <table id='absen' width='100%' class="table table-striped table-bordered ">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Jabatan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $nomor = 1;
                                    @endphp
                                    @foreach ($data as $a)
                                        <tr>
                                            <td>{{ $nomor++ }}</td>
                                            <td>{{ $a['nama'] }}</td>
                                            <td>{{ $a['jenis'] }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')
</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#absen').DataTable({
            processing: true,
            deferRender: true,
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
            "pageLength": 3,
            pagingType: 'simple_numbers',
            responsive: true,
            dom: '<"rowt justify-content-between"<"rowt">>t<"rowt justify-content-end"p>',
        });
    })
</script>

</html>
