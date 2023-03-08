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
                <h3 class="title-pages fw-bold">Data BPJS KES</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <button data-bs-toggle="modal" data-bs-target="#tambahbpjskes" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    BPJS KES
                </button>
            </div>

            <div>
                <table id='table' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Nama</th>
                            <th data-priority="1">Nama Penanggung</th>
                            <th data-priority="3">Nomor BPJS</th>
                            <th data-priority="3">Kelas</th>
                            <th data-priority="3">Iuran</th>
                            <th data-priority="2" class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($bpjskes as $bkes)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $bkes->nama }}</td>
                                <td>{{ $bkes->nama_master }}</td>
                                <td>{{ $bkes->no_bpjs_kes }}</td>
                                <td>{{ $bkes->kelas }}</td>
                                <td>{{ $bkes->iuran }}</td>
                                <td>
                                    <div class="row justify-content-center" style="min-width:110px;">
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-sm btn-primary btn-block" data-bs-toggle="modal"
                                                data-bs-target="#editbpjskes"
                                                onclick="editbpjskes({{ $bkes->id }},'{{ $bkes->no_bpjs_kes }}','{{ $bkes->nama }}','{{ $bkes->kelas }}','{{ $bkes->iuran }}','{{ $bkes->id_master }}')">
                                                <i class="bi bi-pencil-square"></i></button></div>
                                        <div style="max-width:60px"><button type="button"
                                                class="btn btn-sm btn-danger btn-block" data-bs-toggle="modal"
                                                data-bs-target="#hapusbpjskes"
                                                onclick="hapusbpjskes({{ $bkes->id }},'{{ $bkes->no_bpjs_kes }}')"><i
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
    console.log(@json($bpjskes))
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
<script>
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
                    title: 'Data export Jabatan'
                },
                {
                    extend: 'pdfHtml5',
                    title: 'Data export Jabatan'
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
            dom: '<"rowt justify-content-between"<l><"rowt"<f><B>>><t><"rowt justify-content-between"ip>',
        });
    });
</script>
@include('bpjskes.tambahbpjskes')
@include('bpjskes.editbpjskes')
@include('bpjskes.hapusbpjskes')

</html>
