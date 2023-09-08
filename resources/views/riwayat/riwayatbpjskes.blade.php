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
    @php
        $date = date('F-Y');
    @endphp
    <main class="wrapper">
        <div class="container-custome">
            @include('alert')
            <header class="mb-3 d-flex justify-content-between">
                <img src="../assets/img/logo/BPJSKes.png" style="height:40px;margin-top:10px" alt="">

                <div>
                    @if (count($period) != 0)
                        <h6 class="mt-2"><b>Periode :</b>
                            <select name="period" id="period" onchange="periode()">
                                @foreach ($period as $p)
                                    @if ($p->date == $date)
                                        <option value="{{ $p->date }}" selected>{{ $p->date }}</option>
                                    @else
                                        <option value="{{ $p->date }}">{{ $p->date }}</option>
                                    @endif
                                @endforeach
                            </select>
                        </h6>
                        <div class="d-flex float-end">
                            <div style="margin-right: 7px">
                                <a class="btn btn-sm btn-secondary" href="/simpandatabpjskes">
                                    <img src="../assets/img/logo/simpan.png" style="margin:-3px;" width="18"
                                        alt="">
                                </a>
                            </div>
                            <div id="printlink">
                                <a target="_blank" class="btn btn-sm btn-secondary"
                                    href="/printkes/{{ $p->date }}">
                                    <i class="bi bi-printer"></i>
                                </a>
                            </div>
                        </div>
                    @else
                        <div class="mt-3">
                            <a class="btn btn-sm btn-secondary" href="/simpandatabpjskes">
                                <img src="../assets/img/logo/simpan.png" style="margin:-3px;" width="18"
                                    alt="">
                            </a>
                        </div>
                    @endif
                </div>

            </header>
            <div id="tabelriwayat">
                <table class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th>No.</th>
                            <th>Nomor Referensi</th>
                            <th>Nomor Induk Kependudukan (NIK)</th>
                            <th>Nama</th>
                            <th>Nama Penanggung</th>
                            <th>Kelas</th>
                            <th>Iuran</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($data as $dt)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $dt->no_bpjs_kes }}</td>
                                <td>{{ $dt->nik }}</td>
                                <td>{{ $dt->nama }}</td>
                                <td>{{ $dt->nama_master }}</td>
                                <td>{{ $dt->kelas }}</td>
                                @if ($dt->iuran != 0)
                                    <td style="text-align: right;">Rp. {{ number_format($dt->iuran, 0, ',', '.') }}
                                    </td>
                                @else
                                    <td></td>
                                @endif

                            </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        @foreach ($totaliuran as $t)
                            <tr>
                                <th colspan="6">Total Iuran</th>
                                <th style="text-align: right;">Rp. {{ number_format($t->total, 0, ',', '.') }}</th>
                            </tr>
                        @endforeach
                    </tfoot>
                </table>
            </div>
        </div>
        @include('partials.footer')
    </main>
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

    function periode() {
        var date = document.getElementById('period').value;
        var riwayat = @json($riwayat);
        var total = @json($period);
        var filterdate = riwayat.filter(r => r.date == date);
        var filtertotal = total.filter(t => t.date == date);

        console.log(filterdate);
        str = '<table class="table table-striped table-bordered ">';
        str += '    <thead>';
        str += '        <tr style="background-color:#5F7A61;color:#ddd;">';
        str += '            <th>No.</th>';
        str += '            <th>Nomor Referensi</th>';
        str += '            <th>Nomor Induk Kependudukan (NIK)</th>';
        str += '            <th>Nama</th>';
        str += '            <th>Tanggal Lahir</th>';
        str += '            <th>Tanggal Kepesertaan</th>';
        str += '            <th>Iuran</th>';
        str += '        </tr>';
        str += '    </thead>';
        str += '    <tbody>';
        for (let index = 0; index < filterdate.length; index++) {
            str += '        <tr>';
            str += '            <td>' + (index + 1) + '</td>';
            str += '            <td>' + filterdate[index].no_bpjs_tk + '</td>';
            str += '            <td>' + filterdate[index].nik + '</td>';
            str += '            <td>' + filterdate[index].nama + '</td>';
            str += '            <td>' + filterdate[index].tanggal_lahir + '</td>';
            str += '            <td>' + filterdate[index].tgl_kepesertaan + '</td>';
            str += '            <td>' + filterdate[index].iuran + '</td>';
            str += '        </tr>';
        }
        str += '    </tbody>';
        str += '    <tfoot>';
        for (let index = 0; index < filtertotal.length; index++) {
            str += '        <tr>';
            str += '            <th colspan="6">Total Iuran</th>';
            str += '            <th>' + filtertotal[index].total + '</th>';
            str += '        </tr>';
        }
        str += '    </tfoot>';
        str += '</table>';
        document.getElementById('tabelriwayat').innerHTML = str;

        a = '<a target="_blank" class="btn btn-sm btn-secondary" href="/printtk/' + date + '">';
        a += '<i class="bi bi-printer"></i>';
        a += '</a>';

        document.getElementById('printlink').innerHTML = a;
    }
</script>

</html>
