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
                <h3 class="title-pages fw-bold">Pilih tanggal absen Karyawan</h3>
            </header>
            <div class="card p-3">
                <div class="row mt-3">
                    <div class="col-lg-3">
                        <label class="float-end fw-bold">Range Tanggal</label>
                    </div>
                    <div class="col-lg-9">
                        <div class="input-daterange input-group">
                            <input type="date" class="form-control" id="start" value="2000-01-01" required />
                            <span class="card p-1 pe-2 ps-2">to</span>
                            <input type="date" class="form-control" id="end" value="2023-12-12" required />
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-lg-3">
                        <label class="float-end fw-bold">Nama</label>
                    </div>
                    <div class="col-lg-9">
                        <select name="" id="master" class="form-select">
                            <option value="All">All</option>
                            @foreach ($master as $m)
                                <option value="{{ $m->id }}">{{ $m->nama }}</option>
                            @endforeach
                        </select>
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
                <div class="mt-3">
                    <div class="float-end">
                        <div class="d-flex">
                            <button class="btn btn-sm btn-primary m-1" onclick="carirekap()">cari</button>
                        </div>
                        <div class="d-flex">
                            <button class="btn btn-sm btn-primary m-1" onclick="printabs()">Print</button>
                        </div>
                    </div>
                </div>
            </div>
            <div id="printab" class="mt-2">
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
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
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
        var master = document.getElementById('master').value;
        var jenis = document.getElementById('jenis').value;
        console.log(start, end, master, jenis);

        var absen = @json($alldata);
        var filterabsen = [];
        if (master == 'All' && jenis == 'All') {
            filterabsen = absen.filter(a => a.tanggal >= start && a.tanggal <= end);
        } else if (master != 'All' && jenis == 'All') {
            filterabsen = absen.filter(a => a.tanggal >= start && a.tanggal <= end && a.id_master == master);
        } else if (master == 'All' && jenis != 'All') {
            filterabsen = absen.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == jenis);
        } else {
            filterabsen = absen.filter(a => a.tanggal >= start && a.tanggal <= end && a.id_master == master &&
                a.jenis == jenis);
        }
        console.log(filterabsen);
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
        for (let [nama, values] of Object.entries(groupByname(filterabsen))) {
            var s = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'sakit'),
                i = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'ijin'),
                c = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'cuti'),
                a = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.jenis == 'alpha');
            t = values.filter(a => a.tanggal >= start && a.tanggal <= end && a.potongan == "Terpotong")
            let number = no++;
            for (let b = 0; b < values.length; b++) {
                dataabsensi.push({
                    no: number,
                    nama: nama,
                    sakit: s.length,
                    ijin: i.length,
                    cuti: c.length,
                    alpha: a.length,
                    jumlah: values.length,
                    keterangan: values[b].tanggal + ' ( <b>' + values[b].jenis + '</b> ) : ' + values[b].ket +
                        " (<b>" + values[b].potongan + "</b>)",
                    potongan: t.length,
                    surat: values[b].surat,
                })
            }
        }
        // console.log(groupByname(filterabsen))

        var tabel = '';
        tabel += '<table id="mTable" width="100%" class="table table-bordered">';
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
        tabel += '          <th data-priority="3">Potongan</th>';
        tabel += '          <th data-priority="3">Surat</th>';
        tabel += '      </tr>';
        tabel += '  </thead>';
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
                    {
                        data: 'potongan',
                    },
                    {
                        data: 'surat',
                    },
                ],
                rowsGroup: [0, 1, 2, 3, 4, 5, 6, 8],
                data: data,
                pageLength: '10',
                paginate: false,
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

    function printabs() {
        var divContents = document.getElementById("printab").innerHTML;
        var a = window.open('', '', '');
        a.document.write('<html>');
        a.document.write('<body><main class="wrapper"><div class="container-custome">');
        a.document.write(divContents);
        a.document.write('</div></main></body></html>');
        a.document.close();
        a.print();
    }
</script>

</html>
