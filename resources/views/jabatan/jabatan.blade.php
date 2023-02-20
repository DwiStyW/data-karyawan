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
                <h3 class="title-pages fw-bold">Data Jabatan</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <button data-bs-toggle="modal" data-bs-target="#tambah_Jabatan" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    Jabatan
                </button>
                <a href="master" class="btn btn-sm btn-secondary">
                    Karyawan
                </a>
            </div>

            <div>
                <table id='jTable' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Nama Jabatan</th>
                            <th data-priority="3">Departemen</th>
                            <th data-priority="3">Bagian</th>
                            <th data-priority="3">Sie</th>
                            <th data-priority="2" class="text-center">Aksi</th>
                        </tr>
                    </thead>
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
        $('#jTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('getJabatan') }}",
            deferRender: true,
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"]
            ],
            buttons: [
                'excelHtml5',
                'pdfHtml5'
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
            columns: [{
                    data: 'id',
                },
                {
                    data: 'nama_jabatan'
                },
                {
                    data: 'departemen'
                },
                {
                    data: 'bagian'
                },
                {
                    data: 'sie'
                },
                {
                    targets: 0,
                    data: null,
                    render: function(data, type, row, meta) {
                        // console.log(row)
                        return '<div class="row justify-content-center" style="min-width:110px;"><div style="max-width:60px"><button type="button" class="btn btn-sm btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#editjabatan" onclick="editjabatan(`' +
                            row.id_jabatan + '`,`' + row.nama_jabatan + '`,`' + row.departemen +
                            '`,`' + row.bagian + '`,`' + row.sie +
                            '`)"><i class="bi bi-pencil-square"></i></button></div><div style="max-width:60px"><button type="button" class="btn btn-sm btn-danger btn-block" data-bs-toggle="modal" data-bs-target="#hapusjabatan" onclick="hapusjabatan(`' +
                            row.id_jabatan + '`,`' + row.nama_jabatan +
                            '`)" ><i class="bi bi-trash3-fill"></i></button></div></div>';
                    }
                }
            ]
        });

    });
</script>
@include('jabatan.tambahjabatan')
@include('jabatan.editjabatan')
@include('jabatan.hapusjabatan')

</html>
