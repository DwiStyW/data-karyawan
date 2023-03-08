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


</head>

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
            </div>

            <div>
                <table id='mTable' width='100%' class="table table-striped table-bordered ">
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
                            <th data-priority="3">Golongan</th>
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
                                <td><a href="detailmaster/{{ $Tm->id }}">{{ $Tm->nama }}</a></td>
                                <td>{{ $Tm->nik }}</td>
                                <td>{{ $Tm->tempat_lahir }}</td>
                                <td>{{ $Tm->tanggal_lahir }}</td>
                                <td>{{ $Tm->jenis_kelamin }}</td>
                                <td>{{ $Tm->alamat }}</td>
                                <td>{{ $Tm->no_hp }}</td>
                                <td>{{ $Tm->agama }}</td>
                                <td>{{ $Tm->nama_jabatan }}</td>
                                <td>{{ $Tm->golongan }}</td>
                                <td>
                                    <div class="row justify-content-center" style="min-width:110px;">
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-primary btn-block" data-bs-toggle="modal"
                                                data-bs-target="#edit_master"
                                                onclick="edit({{ $Tm->id }},'{{ $Tm->nama }}','{{ $Tm->nik }}','{{ $Tm->alamat }}','{{ $Tm->tempat_lahir }}','{{ $Tm->tanggal_lahir }}','{{ $Tm->jenis_kelamin }}','{{ $Tm->agama }}','{{ $Tm->no_hp }}')"><i
                                                    class="bi bi-pencil-square"></i></button></div>
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-danger btn-block" data-bs-toggle="modal"
                                                data-bs-target="#hapus_master"
                                                onclick="hapus({{ $Tm->id }},'{{ $Tm->nama }}')"><i
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
<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
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
            // columns: [{
            //         data: 'id',
            //     },
            //     {
            //         targets: 0,
            //         data: 'nama',
            //         render: function(data, type, row, meta) {
            //             console.log(row)
            //             return '<a href="detailmaster/' + row.id_master + '">' + data + '</a>';

            //         }
            //     },
            //     {
            //         data: 'nik'
            //     },
            //     {
            //         data: 'tempat_lahir'
            //     },
            //     {
            //         data: 'tanggal_lahir'
            //     },
            //     {
            //         data: 'jenis_kelamin'
            //     },
            //     {
            //         data: 'alamat'
            //     },
            //     {
            //         data: 'no_hp'
            //     },
            //     {
            //         data: 'agama'
            //     },
            //     {
            //         data: 'id_jabatan'
            //     },
            //     {
            //         data: 'golongan'
            //     },
            //     {
            //         data: 'awal_kerja'
            //     },
            //     {
            //         data: 'status_pensiun'
            //     },
            //     {
            //         targets: 0,
            //         data: null,
            //         render: function(data, type, row, meta) {
            //             return '<div class="row justify-content-center" style="min-width:110px;"><div style="max-width:60px"><button type="button" class="btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#edit_master" onclick="edit(`' +
            //                 row.id_master + '`,`' + row.nama + '`,`' + row.nik + '`,`' + row
            //                 .alamat + '`,`' + row.tempat_lahir + '`,`' + row.tanggal_lahir +
            //                 '`,`' + row.jenis_kelamin + '`,`' + row.agama + '`,`' + row.no_hp +
            //                 '`,`' + row.jabatan + '`,`' + row
            //                 .golongan + '`,`' + row.awal_kerja + '`,`' + row.status_pensiun +
            //                 '`)"><i class="bi bi-pencil-square"></i></button></div><div style="max-width:60px"><button type="button" class="btn btn-danger btn-block" data-bs-toggle="modal" data-bs-target="#hapus_master" onclick="hapus(`' +
            //                 row.id_master + '`,`' + row.nama +
            //                 '`)" ><i class="bi bi-trash3-fill"></i></button></div></div>';
            //         }
            //     },
            // ]
        });

    });
</script>
@include('MasterKaryawan.tambah_master')
@include('MasterKaryawan.edit_master')
@include('MasterKaryawan.hapus_master')

</html>
