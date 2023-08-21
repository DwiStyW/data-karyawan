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
                <h5 class="title-pages fw-bold">Daftar Distribusi Absen</h5>
                <h6>Pilih Tanggal <input type="date" id="date" onchange="getdate()"></h6>
            </header>
            @include('alert')
            <div id="tabeldistribusi"></div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<script src="../assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    function getdate() {
        var tgl = document.getElementById('date').value;
        // console.log(tgl)

        $(document).ready(function() {
            var data = datane;
            $('#mTable').DataTable({
                columns: [{
                        data: 'no',
                    },
                    {
                        data: 'nama',
                    },
                    {
                        data: 'jumlah',
                    },
                    {
                        data: 'tanggal',
                    },
                    {
                        data: 'jenis',
                    },
                    {
                        data: 'ket',
                    },
                ],
                rowsGroup: [0, 1, 2],
                data: data,
                responsive: true,
                info: false,
                paging: false,
                searching: false
            });
        });
    }
</script>

</html>
