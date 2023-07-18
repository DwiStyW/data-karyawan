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

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Data Absensi Karyawan tanggal {{ $date }}</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <button data-bs-toggle="modal" data-bs-target="#tambahabsensi" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    Absensi
                </button>
                <a href="/rekapabsensi" class="btn btn-sm btn-secondary">Rekap Absensi</a>
            </div>
            <div>
                <table id='mTable' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Nama</th>
                            <th data-priority="3">Tanggal</th>
                            <th data-priority="3">Jenis</th>
                            <th data-priority="3">Keterangan</th>
                            <th data-priority="1">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($absensi as $a)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $a->nama }}</td>
                                <td>{{ $a->tanggal }}</td>
                                <td>{{ $a->jenis }}</td>
                                <td>{{ $a->ket }}</td>
                                <td>
                                    <div class="row justify-content-center" style="min-width:110px;">
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-primary btn-block" data-bs-toggle="modal"
                                                data-bs-target="#edit_absensi"
                                                onclick="edit({{ $a->id }},{{ $a->id_master }},'{{ $a->tanggal }}','{{ $a->jenis }}','{{ $a->ket }}')"><i
                                                    class="bi bi-pencil-square"></i></button></div>
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-danger btn-block" data-bs-toggle="modal"
                                                data-bs-target="#hapus_absensi"
                                                onclick="hapus({{ $a->id }},'{{ $a->nama }}','{{ $a->tanggal }}')"><i
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
@include('absensi.tambahabsensi')
@include('absensi.editabsensi')
@include('absensi.hapusabsensi')
<script src="../assets/js/jquery-1.11.3.min.js"></script>
{{-- <script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script> --}}
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

<script>
    $(document).ready(function() {
        $('.form-select').select2({
            dropdownParent: $('#tambahabsensi')
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
            dom: '<"rowt justify-content-between"<l><"rowt"<f><B>>>t<"rowt justify-content-between"ip>',
        });

    });
</script>

</html>
