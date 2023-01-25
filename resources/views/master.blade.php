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

    {{-- <link rel="stylesheet" type="text/css" href="../assets/DataTables/datatables.min.css" /> --}}
    <style>

    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Data Master</h3>
            </header>
            <div>
                <table id='mTable' width='100%' class="table table-striped table-bordered">
                    <thead>
                        <tr style="background-color:#353535;color:#ddd">
                            <td>No</td>
                            <td>Nama</td>
                            <td>Tempat Lahir</td>
                            <td>Tanggal Lahir</td>
                            <td>Jenis Kelamin</td>
                            <td>Alamat</td>
                            <td>No KTP</td>
                            <td>Agama</td>
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
            rowReorder: {
                selector: 'td:nth-child(2)'
            },
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
            dom: '<"rowt justify-content-between"<l><"rowt"fB>>t<"rowt justify-content-between"ip>',
            columns: [{
                    data: 'id'
                },
                {
                    data: 'nama'
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
                    data: 'noktp'
                },
                {
                    data: 'agama'
                },
            ]
        });

    });
</script>

</html>
