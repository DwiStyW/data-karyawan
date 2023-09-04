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
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Hak Akses User</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <a href="/tambahhakakses" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    Kelola
                </a>
            </div>
            <div>
                <table id='mTable' width='100%' class="table table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1" style="width: 100px !important">No</th>
                            <th data-priority="1">Nama</th>
                            <th data-priority="3">Hak Akses Jabatan</th>
                        </tr>
                    </thead>
                    {{-- <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($data as $d)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $d->name }}</td>
                                <td>{{ $d->nama_jabatan }}</td>
                            </tr>
                        @endforeach
                    </tbody> --}}
                </table>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')


</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
<!-- Script -->
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


    var dataakses = @json($data);
    var nwarr = [];
    const groupBy = (keys) => (array) =>
        array.reduce((objectsByKeyValue, obj) => {
            const value = keys.map((key) => obj[key]).join("-");
            objectsByKeyValue[value] = (objectsByKeyValue[value] || []).concat(obj);
            return objectsByKeyValue;
        }, {});
    const groupByiduser = groupBy(['id_user']);
    var no = 1;
    for (let [id_user, values] of Object.entries(groupByiduser(dataakses))) {
        let number = no++;
        for (let b = 0; b < values.length; b++) {
            nwarr.push({
                no: number,
                nama: values[b].name,
                nama_jabatan: values[b].nama_jabatan,
            })
        }
    }
    $(document).ready(function() {
        var data = nwarr;
        $('#mTable').DataTable({

            columns: [{
                    data: 'no',
                },
                {
                    data: 'nama',
                },
                {
                    data: 'nama_jabatan',
                }
            ],
            rowsGroup: [0, 1],
            data: data,
            pageLength: '50',
            processing: true,
            deferRender: true,
            "lengthMenu": [
                [50, 100, 200, -1],
                [50, 100, 200, "All"]
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
