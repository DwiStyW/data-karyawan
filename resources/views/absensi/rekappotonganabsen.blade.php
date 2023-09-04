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
                <h5 class="title-pages fw-bold">Rekap Potongan Absen Bulan
                    <span id="bulan">{{ $month }}</span>
                </h5>
            </header>
            @include('alert')
            <div class="d-flex justify-content-end mb-3">
                <div class="d-flex align-items-center">
                    <span><b>Pilih Periode</b></span>
                </div>
                <div class="btn btn-sm">
                    <select class="form-select" name="periode" id="periode" onchange="periodeabsen()">
                        <option value="" disabled selected>Pilih Periode</option>
                        @foreach ($per as $p)
                            @if ($month == $p['bulan'] . ' ' . $p['tahun'])
                                <option value="{{ $p['tahun'] }}-{{ $p['bln'] }}" selected>{{ $p['bulan'] }}
                                    {{ $p['tahun'] }}
                                </option>
                            @else
                                <option value="{{ $p['tahun'] }}-{{ $p['bln'] }}">{{ $p['bulan'] }}
                                    {{ $p['tahun'] }}
                                </option>
                            @endif
                        @endforeach
                    </select>
                </div>
            </div>
            <div id="tabelrekappotongan" style="display:block">
                <table id='mTable' width='100%' class="table table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Nama</th>
                            <th data-priority="3">Total</th>
                            <th data-priority="3">Tanggal</th>
                            <th data-priority="3">Jenis</th>
                            <th data-priority="3">Keterangan</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div id="tabelpotonganbulan" style="display:none"></div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<script src="../assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

<script>
    $(document).ready(function() {
        $('.form-select').select2({

        });
    });
</script>

<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    var absen = @json($dataabsenbulan);
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
    for (let [nama, values] of Object.entries(groupByname(absen))) {
        let number = no++;
        for (let b = 0; b < values.length; b++) {
            if (values[b].status != 'Tetap' && values[b].surat == 'ada' || values[b].status != 'Tetap' && values[b]
                .surat == 'tidak') {
                dataabsensi.push({
                    no: number,
                    nama: nama,
                    jumlah: values.length,
                    tanggal: values[b].tanggal,
                    jenis: values[b].jenis,
                    ket: values[b].ket,
                    status: values[b].status,
                })
            }
        }
    }
    console.log(dataabsensi);
    $(document).ready(function() {
        var data = dataabsensi;
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

    $(document).on("scroll", function() {
        if ($(document).scrollTop() > 100) {
            $(".navbar").addClass("border-bottom");
        } else {
            $(".navbar").removeClass("border-bottom");
        }
    });


    function periodeabsen() {
        var periode = document.getElementById('periode').value;
        const data = @json($alldata);
        const newarr = data.filter(data => {
            return data.tanggal.includes(periode);
        });
        let dataabsenbaru = [];
        var no = 1;
        for (let [nama, values] of Object.entries(groupByname(newarr))) {
            let number = no++;
            for (let b = 0; b < values.length; b++) {
                if (values[b].golongan != 'tetap' && values[b].surat == 'ada' || values[b].golongan != 'tetap' &&
                    values[b].surat == 'tidak') {
                    dataabsenbaru.push({
                        no: number,
                        nama: nama,
                        jumlah: values.length,
                        tanggal: values[b].tanggal,
                        jenis: values[b].jenis,
                        ket: values[b].ket,
                    })
                }
            }
        }
        // console.log(dataabsenbaru);
        var str = '';
        str += '<table id="mTable2" width="100%" class = "table table-bordered " > ';
        str += '<thead>';
        str += '<tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
        str += '<th data-priority="1">No</th>';
        str += '<th data-priority="1">Nama</th>';
        str += '<th data-priority="3">Total</th>';
        str += '<th data-priority="3">Tanggal</th>';
        str += '<th data-priority="3">Jenis</th>';
        str += '<th data-priority="3">Keterangan</th>';
        str += '</tr>';
        str += '</thead>';
        str += '<tbody>';
        str += '</tbody>';
        str += '</table>';
        $(document).ready(function() {
            var data = dataabsenbaru;
            $('#mTable2').DataTable({

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

        var e = document.getElementById("periode");
        var text = e.options[e.selectedIndex].text;
        document.getElementById('bulan').textContent = text;
        document.getElementById('tabelpotonganbulan').innerHTML = str;
        document.getElementById('tabelrekappotongan').style.display = 'none';
        document.getElementById('tabelpotonganbulan').style.display = 'block';
        console.log(text)
    }
</script>

</html>
