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
    <script src="../assets/js/jquery-1.11.3.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h5 class="title-pages fw-bold">Daftar Distribusi Absen</h5>
                <div class="row mt-2">
                    <div class="col-3">
                        <h6>Pilih Tanggal Distribusi Absen </h6>
                    </div>
                    <div class="col-9">
                        <input class="form-control" type="date" id="date" oninput="getdate()">
                    </div>
                </div>
            </header>
            @include('alert')
            <div id="tabeldistribusi"></div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>

<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function getdate() {
        var tgl = document.getElementById('date').value;
        console.log(tgl);
        $.ajax({
            type: 'POST',
            url: "{{ route('daftardistribusiabsen.post') }}",
            data: {
                tanggal: tgl,
            },
            success: function(data) {
                console.log(data)
                var datakabag = [],
                    no = 1;
                str = '';
                str += '<table id="table" width="100%" class="table table-bordered ">';
                str += '    <thead>';
                str += '        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
                str += '            <th data-priority="1">No</th>';
                str += '            <th data-priority="1">Penerima Absen</th>';
                str += '            <th data-priority="3">Status</th>';
                str += '        </tr>';
                str += '    </thead>';
                str += '    <tbody>';
                for (let i = 0; i < data.length; i++) {
                    str += '        <tr>';
                    str += '            <td>' + no++ + '</td>';
                    str += '            <td>' + data[i].nama + '</td>';
                    if (data[i].status == "Sudah Mengetahui" || data[i].status == "Sudah Terkirim") {
                        str += '        <td class="text-success">' + data[i].status + '</td>';
                    } else {
                        str += '        <td class="text-warning">' + data[i].status + '</td>';
                    }
                    str += '        </tr>';
                }
                str += '    </tbody>';
                str += '</table>';
                $(document).ready(function() {
                    // var data = datakabag;
                    $('#table').DataTable({
                        // columns: [{
                        //         data: 'no',
                        //     },
                        //     {
                        //         data: 'nama',
                        //     },
                        //     {
                        //         data: 'status',
                        //     }
                        // ],
                        // data: data,
                        responsive: true,
                        info: false,
                        paging: false,
                        searching: false
                    });
                })
                document.getElementById('tabeldistribusi').innerHTML = str;
            }
        });
    }
</script>

</html>
