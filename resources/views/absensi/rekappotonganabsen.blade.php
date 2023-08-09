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
            <div class="float-end">
                <select class="form-select" name="periode" id="periode" onchange="periodeabsen()">
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
            <div id="tabelrekappotongan" style="display:block">
                <table id='mTable' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Nama</th>
                            <th data-priority="3">Tanggal</th>
                            <th data-priority="3">Jenis</th>
                            <th data-priority="3">Surat</th>
                            <th data-priority="3">Keterangan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($absen as $a)
                            <tr>
                                @if ($a->golongan == 'tetap' && $a->surat == 'ada')
                                @else
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $a->nama }}</td>
                                    <td>{{ $a->tanggal }}</td>
                                    <td>{{ $a->jenis }}</td>
                                    <td>{{ $a->surat }}</td>
                                    <td>{{ $a->ket }}</td>
                                @endif
                            </tr>
                        @endforeach
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
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

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

    function filterByValue(array, string) {
        return array.filter(o =>
            Object.keys(o).some(k => o[k].toLowerCase().includes(string.toLowerCase())));
    }

    function periodeabsen() {
        var periode = document.getElementById('periode').value;
        const data = @json($alldata);
        const newarr = data.filter(data => {
            return data.tanggal.includes(periode);
        });
        var str = '';
        str += '<table id="mTable" width="100%" class = "table table-striped table-bordered " > ';
        str += '<thead>';
        str += '<tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
        str += '<th data-priority="1">No</th>';
        str += '<th data-priority="1">Nama</th>';
        str += '<th data-priority="3">Tanggal</th>';
        str += '<th data-priority="3">Jenis</th>';
        str += '<th data-priority="3">Surat</th>';
        str += '<th data-priority="3">Keterangan</th>';
        str += '</tr>';
        str += '</thead>';
        str += '<tbody>';
        var no = 1;
        for (let i = 0; i < newarr.length; i++) {
            str += '<tr>';
            str += '<td>' + no++ + '</td>';
            str += '<td>' + newarr[i].nama + '</td>';
            str += '<td>' + newarr[i].tanggal + '</td>';
            str += '<td>' + newarr[i].jenis + '</td>';
            str += '<td>' + newarr[i].surat + '</td>';
            str += '<td>' + newarr[i].ket + '</td>';
            str += '</tr>';
        }
        str += '</tbody>';
        str += '</table>';

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
