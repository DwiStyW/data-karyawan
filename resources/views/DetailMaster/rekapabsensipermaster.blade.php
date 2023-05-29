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
            @foreach ($master as $m)
            @endforeach
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Pilih tanggal absen Karyawan {{ $m->nama }}</h3>
            </header>
            <div class="card p-3">
                <div class="row mt-3">
                    <div class="col-lg-3">
                        <label class="float-end fw-bold">Range Tanggal</label>
                    </div>
                    <div class="col-lg-9">
                        <div class="input-daterange input-group">
                            <input type="date" class="form-control" id="start" required />
                            <span class="card p-1 pe-2 ps-2">to</span>
                            <input type="date" class="form-control" id="end" required />
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-lg-3">
                        <label class="float-end fw-bold">Jenis</label>
                    </div>
                    <div class="col-lg-9">
                        <select name="" id="jenis" class="form-select">
                            <option value="All">All</option>
                            <option value="ijin">Ijin</option>
                            <option value="sakit">Sakit</option>
                            <option value="cuti">Cuti</option>
                            <option value="alpha">Alpha</option>
                        </select>
                    </div>
                </div>
                <input type="hidden" name="master" id="master" value="{{ $m->id }}">
                <div class="mt-3">
                    <div class="float-end">
                        <div class="d-flex">
                            <a href="/absensi">
                                <button class="btn btn-sm btn-secondary m-1">kembali</button>
                            </a>
                            <button class="btn btn-sm btn-primary m-1" onclick="carirekap()">cari</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mt-2">
                <div id="tabelabsen"></div>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<script src="../assets/js/jquery-1.11.3.min.js"></script>
{{-- <script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script> --}}
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min.js">
</script>

<script>
    $(document).ready(function() {
        $('.form-select').select2({

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
<script>
    function carirekap() {
        var start = document.getElementById('start').value;
        var end = document.getElementById('end').value;
        var jenis = document.getElementById('jenis').value;
        var master = document.getElementById('master').value;
        console.log(start, end, master, jenis);

        var absen = @json($absensi);
        var filterabsen = [];
        if (jenis == 'All') {
            filterabsen = absen.filter(a => a.tanggal >= start && a.tanggal <= end && a.id_master == master);
        } else {
            filterabsen = absen.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == jenis &&
                a.id_master == master);
        }
        // console.log(filterabsen);

        // grupby
        const groupBy = (keys) => (array) =>
            array.reduce((objectsByKeyValue, obj) => {
                const value = keys.map((key) => obj[key]).join("-");
                objectsByKeyValue[value] = (objectsByKeyValue[value] || []).concat(obj);
                return objectsByKeyValue;
            }, {});
        // const arr = filterabsen;
        const groupByname = groupBy(['nama']);
        let dataabsensi = [];
        var no = 1;
        for (let [groupName, values] of Object.entries(groupByname(filterabsen))) {
            // console.log(`${groupName}: ${values.length}`);
            var s = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'sakit'),
                i = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'ijin'),
                c = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'cuti'),
                a = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'alpha');
            // var valket = _.pluck(values, 'ket'),
            //     valjenis = _.pluck(values, 'jenis');
            var ket = values.map(function(item) {
                return item['tanggal'] + ' (' + item['jenis'] + ') : ' + item['ket'] + '<br>';
            });

            console.log(ket.join(''));
            dataabsensi.push({
                no: no++,
                nama: groupName,
                sakit: s.length,
                ijin: i.length,
                cuti: c.length,
                alpha: a.length,
                jumlah: values.length,
                keterangan: ket.join(''),
                values
            })
        }
        console.log(dataabsensi)

        var tabel = '';
        tabel += '<table id="mTable" width="100%" class="table table-striped table-bordered">';
        tabel += '  <thead>';
        tabel += '      <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
        tabel += '          <th data-priority="1">No</th>';
        tabel += '          <th data-priority="1">Nama</th>';
        tabel += '          <th data-priority="1">Sakit</th>';
        tabel += '          <th data-priority="1">Ijin</th>';
        tabel += '          <th data-priority="1">Cuti</th>';
        tabel += '          <th data-priority="1">Alpha</th>';
        tabel += '          <th data-priority="3">jumlah</th>';
        tabel += '          <th data-priority="3">Keterangan</th>';
        tabel += '      </tr>';
        tabel += '  </thead>';
        // tabel += '  <tbody>';
        // for (let [groupName, values] of Object.entries(groupByname(arr))) {
        //     console.log(`${groupName}: ${values.length}`);
        //     tabel += '      <tr>';
        //     tabel += '          <td rowspan="' + values.length + '">' + no++ + '</td>';
        //     tabel += '          <td rowspan="' + values.length + '">' + groupName + '</td>';
        //     tabel += '          <td rowspan="' + values.length + '">' + groupName + '</td>';
        //     tabel += '          <td>' + groupName + '</td>';
        //     tabel += '          <td>' + groupName + '</td>';
        //     tabel += '      </tr>';
        //     for (let j = 1; j < values.length; j++) {
        //         tabel += '      <tr>';
        //         tabel += '          <td>' + groupName + '</td>';
        //         tabel += '          <td>' + groupName + '</td>';
        //         tabel += '      </tr>';
        //     }
        // }
        // tabel += '  </tbody>';
        tabel += '</table>';

        $(document).ready(function() {
            // DataTable
            var data = dataabsensi;
            // console.log(data[0].no);
            $('#mTable').DataTable({
                columns: [{
                        data: 'no',
                    },
                    {
                        data: 'nama',
                    },
                    {
                        data: 'sakit',
                    },
                    {
                        data: 'ijin',
                    },
                    {
                        data: 'cuti',
                    },
                    {
                        data: 'alpha',
                    },
                    {
                        data: 'jumlah',
                    },
                    {
                        data: 'keterangan',
                    },
                ],
                data: data,
                pageLength: '10',
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
        document.getElementById('tabelabsen').innerHTML = tabel;

    }
</script>

</html>
