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
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.7.0/css/select.dataTables.min.css" />
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Absensi Karyawan</h3>
            </header>
            @include('alert')
            <div>
                @if ($level < 2)
                    <table id='mTable' width='100%' class="table bg-white table-bordered ">
                        <thead>
                            <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold;text-align:center">
                                <th data-priority="1">No</th>
                                <th data-priority="1">Tanggal</th>
                                <th data-priority="3">Nama</th>
                                <th data-priority="3">Jenis</th>
                                <th data-priority="3">Keterangan</th>
                                <th data-priority="3">Surat</th>
                            </tr>
                        </thead>
                    </table>
                @else
                    <table id='mTablekabag' width='100%' class="table bg-white table-bordered ">
                        <thead>
                            <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold;text-align:center">
                                <th data-priority="1">No</th>
                                <th data-priority="1">Tanggal</th>
                                <th data-priority="3">Nama</th>
                                <th data-priority="3">Jenis</th>
                                <th data-priority="3">Keterangan</th>
                                <th data-priority="3">Surat</th>
                                <th data-priority="1">Aksi</th>
                            </tr>
                        </thead>
                    </table>
                @endif
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
@include('absensi.mengetahui')
<script src="../assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>
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
<script type="text/javascript">
    var disabsen = @json($disabsen);
    var level = @json($level);
    let data = @json($data);
    data.sort((a, b) => b.tanggal - a.tanggal);
    console.log(disabsen)
    console.log(data)
    var datafilterabsen = data;
    if (disabsen.length != 0) {
        for (i = 0; i < disabsen.length; i++) {
            filtersabsen = data.filter(a => a.tanggal == disabsen[i].tanggal)
            for (j = 0; j < filtersabsen.length; j++) {
                if (filtersabsen[j].surat == 'ada') {
                    surat = filtersabsen[j].surat + '<a href="/assets/img/surat-izin/' + filtersabsen[j].file +
                        '" target="_blank"><i class="bi bi-image"></i></a>'
                } else {
                    surat = filtersabsen[j].surat
                }
                datafilterabsen.push({
                    'id': filtersabsen[j].id,
                    'nama': filtersabsen[j].nama,
                    'tanggal': filtersabsen[j].tanggal,
                    'jenis': filtersabsen[j].jenis,
                    'ket': filtersabsen[j].ket,
                    'surat': surat
                })
            }
        }
    }

    // grupby
    const groupBy = (keys) => (array) =>
        array.reduce((objectsByKeyValue, obj) => {
            const value = keys.map((key) => obj[key]).join("-");
            objectsByKeyValue[value] = (objectsByKeyValue[value] || []).concat(obj);
            return objectsByKeyValue;
        }, {});

    const groupByid = groupBy(['id']);
    let dataeliminasi = [];
    for (let [id, values] of Object.entries(groupByid(datafilterabsen))) {
        if (values.length == 1) {
            for (let a = 0; a < values.length; a++) {
                dataeliminasi.push({
                    'id': values[a].id,
                    'nama': values[a].nama,
                    'tanggal': values[a].tanggal,
                    'jenis': values[a].jenis,
                    'ket': values[a].ket,
                    'surat': values[a].surat,
                })
            }
        }
    }
    dataeliminasi.sort((a, b) => b.tanggal - a.tanggal);

    const groupBytanggal = groupBy(['tanggal']);
    let dataabsensi = [];
    let dataabsensikabag = [];
    var no = 1;
    for (let [tanggal, values] of Object.entries(groupBytanggal(dataeliminasi))) {
        var ts = Number(tanggal);
        var tgl = new Date(ts).toLocaleDateString('en-GB');

        date = "'" + tanggal + "'";
        let number = no++;
        for (let b = 0; b < values.length; b++) {
            if (level < 2) {
                dataabsensi.push({
                    no: number,
                    nama: values[b].nama,
                    tanggal: tgl,
                    jenis: values[b].jenis,
                    ket: values[b].ket,
                    surat: values[b].surat,
                });
            } else {
                dataabsensikabag.push({
                    no: number,
                    nama: values[b].nama,
                    tanggal: tgl,
                    jenis: values[b].jenis,
                    ket: values[b].ket,
                    surat: values[b].surat,
                    button: '<button class="btn btn-sm btn-warning" type="button" class="btn btn-danger btn-block" data-bs-toggle="modal" data-bs-target="#mengetahui_absensi" onclick="mengetahui(' +
                        ts +
                        ')">Mengetahui</button>',
                });
            }

        }
    }
    // console.log(datafilterabsen);
    console.log(dataabsensi);
    console.log(dataabsensikabag);
    console.log(level);

    // DataTable
    $(document).ready(function() {
        if (level < 2) {
            $('#mTable').DataTable({
                data: dataabsensi,
                processing: false,
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
                columns: [{
                        data: 'no',
                        className: 'text-center'
                    },
                    {
                        data: 'tanggal',
                    },
                    {
                        data: 'nama',
                    },
                    {
                        data: 'jenis',
                    },
                    {
                        data: 'ket',
                    },
                    {
                        data: 'surat',
                    },
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
                rowsGroup: [0, 1],
                responsive: true,
                dom: '<"rowt justify-content-between"<><"rowt"<f><B>>>t<"rowt justify-content-between"i>',
            });
        } else {
            $('#mTablekabag').DataTable({
                data: dataabsensikabag,
                processing: false,
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
                columns: [{
                        data: 'no',
                        className: 'text-center'
                    },
                    {
                        data: 'tanggal',
                    },
                    {
                        data: 'nama',
                    },
                    {
                        data: 'jenis',
                    },
                    {
                        data: 'ket',
                    },
                    {
                        data: 'surat',
                    },
                    {
                        data: 'button',
                        className: 'text-center'
                    },
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
                rowsGroup: [0, 1, 6],
                responsive: true,
                dom: '<"rowt justify-content-between"<><"rowt"<f><B>>>t<"rowt justify-content-between"i>',
            });
        }

    });


    // function mengetahui(timenumber) {
    //     console.log(timenumber)
    //     location.href = '/distribusi-absensi/' + timenumber;
    // }
</script>
<style>
    td {
        vertical-align: middle;
    }
</style>

</html>
