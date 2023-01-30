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
            <div class="pb-3">
                <button href="sidar-ui" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    Master
                </button>
            </div>

            <div>
                <table id='mTable' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <td>No</td>
                            <td>Nama</td>
                            <td>No KTP</td>
                            <td>Tempat Lahir</td>
                            <td>Tanggal Lahir</td>
                            <td>Jenis Kelamin</td>
                            <td>Alamat</td>
                            <td>No Hp</td>
                            <td>Agama</td>
                            <td>Jabatan</td>
                            <td>Golongan</td>
                            <td>Awal Kerja</td>
                            <td>BPJS TK</td>
                            <td>Status Pensiun</td>
                            <td>Aksi</td>
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
        $('#mTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('getMaster') }}",
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
            dom: '<"rowt justify-content-between"<l><"rowt"<f><B>>><"over"<"tabel-lg"t>><"rowt justify-content-between"ip>',
            columns: [{
                    data: 'id'
                },
                {
                    targets: 0,
                    data: 'nama',
                    render: function(data, type, row, meta) {
                        console.log(row.id_master)
                        return '<a href="detailmaster/' + row.id_master + '">' + data + '</a>';
                    }
                },
                {
                    data: 'noktp'
                },
                {
                    data: 'tmptlhr'
                },
                {
                    data: 'tgllhr'
                },
                {
                    data: 'kelamin'
                },
                {
                    data: 'alamat'
                },
                {
                    data: 'nohp'
                },
                {
                    data: 'agama'
                },
                {
                    data: 'jabatan'
                },
                {
                    data: 'golongan'
                },
                {
                    data: 'awalkerja'
                },
                {
                    data: 'bpjstk'
                },
                {
                    data: 'pensiun'
                },
                {
                    targets: 0,
                    data: null,
                    render: function(data, type, row, meta) {
                        // console.log(row.id_master)
                        return '<div class="row justify-content-start" style="min-width:110px;"><div style="max-width:60px"><a type="button" class="btn btn-primary btn-block" href="edit_master/' +
                            row.id_master +
                            '" ><i class="bi bi-pencil-square"></i></a></div><div style="max-width:60px"><a type="button" class="btn btn-danger btn-block" href="delete_master/' +
                            row.id_master +
                            '" ><i class="bi bi-trash3-fill"></i></a></div></div>';
                    }
                },
            ]
        });

    });
</script>

</html>
