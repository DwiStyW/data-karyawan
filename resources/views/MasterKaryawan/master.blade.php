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
    <link rel="stylesheet" href="../assets/js/select2-master/dist/css/select2.min.css" />

</head>
<style>
    @media (min-width:768px) {
        .tabel-lg {
            min-width: 2000px;
        }
    }


    @media (min-width:1370px) {
        .tabel-lg {
            min-width: 2500px;
        }
    }
</style>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Data Master</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <button data-bs-toggle="modal" data-bs-target="#tambah_master" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    Karyawan
                </button>
                <a href="/jabatan" class="btn btn-sm btn-secondary">
                    Jabatan
                </a>
                <a href="/struktur" class="btn btn-sm btn-secondary">
                    Struktur
                </a>
            </div>

            <div>
                <table id='mTable' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Nama</th>
                            <th data-priority="3">No KTP</th>
                            <th data-priority="3">No KK</th>
                            <th data-priority="3">No Rekening</th>
                            <th data-priority="3">Tempat Lahir</th>
                            <th data-priority="3">Tanggal Lahir</th>
                            <th data-priority="3">Jenis Kelamin</th>
                            <th data-priority="3">Alamat</th>
                            <th data-priority="3">No Hp</th>
                            <th data-priority="3">Agama</th>
                            <th data-priority="3">Jabatan</th>
                            <th data-priority="3">Status/Golongan</th>
                            <th data-priority="2">BPJS Kes</th>
                            <th data-priority="2">BPJS Tk</th>
                            <th data-priority="2" class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($Tmaster as $Tm)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td><a href="detailmaster/{{ $Tm['id'] }}">{{ $Tm['nama'] }}</a></td>
                                <td>{{ $Tm['nik'] }}</td>
                                <td>{{ $Tm['nokk'] }}</td>
                                <td>{{ $Tm['norekening'] }}</td>
                                <td>{{ $Tm['tempat_lahir'] }}</td>
                                <td>{{ date('d/m/Y', strtotime($Tm['tanggal_lahir'])) }}</td>
                                <td>{{ $Tm['jenis_kelamin'] }}</td>
                                <td>{{ $Tm['alamat'] }}</td>
                                <td>{{ $Tm['no_hp'] }}</td>
                                <td>{{ $Tm['agama'] }}</td>
                                <td>{{ $Tm['nama_jabatan'] }}</td>
                                <td>{{ $Tm['golongan'] }}</td>
                                <td>{{ $Tm['bpjskes'] }}</td>
                                <td>{{ $Tm['bpjstk'] }}</td>
                                <td>
                                    <div class="row justify-content-center" style="min-width:110px;">
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-primary btn-block" data-bs-toggle="modal"
                                                data-bs-target="#edit_master"
                                                onclick="edit({{ $Tm['id'] }},'{{ $Tm['nama'] }}','{{ $Tm['nik'] }}','{{ $Tm['alamat'] }}','{{ $Tm['tempat_lahir'] }}','{{ $Tm['tanggal_lahir'] }}','{{ $Tm['jenis_kelamin'] }}','{{ $Tm['agama'] }}','{{ $Tm['no_hp'] }}','{{ $Tm['nokk'] }}','{{ $Tm['norekening'] }}')"><i
                                                    class="bi bi-pencil-square"></i></button></div>
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-danger btn-block" data-bs-toggle="modal"
                                                data-bs-target="#hapus_master"
                                                onclick="hapus({{ $Tm['id'] }},'{{ $Tm['nama'] }}')"><i
                                                    class="bi bi-trash3-fill"></i></button></div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
@include('MasterKaryawan.tambah_master')
@include('MasterKaryawan.edit_master')
@include('MasterKaryawan.hapus_master')
@include('sweetalert::alert')
<script src="../assets/js/jquery-1.11.3.min.js"></script>
{{-- <script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script> --}}
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

<script>
    $(document).ready(function() {
        $('.form-select').select2({
            dropdownParent: $('#tambah_master')
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
{{-- <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script> --}}

<!-- Script -->
<script type="text/javascript">
    $(document).ready(function() {
        // DataTable
        $('#mTable').DataTable({
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
            dom: '<"rowt justify-content-between"<l><"rowt"<f><B>>><"over"<"tabel-lg"t>><"rowt justify-content-between"ip>',
        });

    });
</script>
</html>
