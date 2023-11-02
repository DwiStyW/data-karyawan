<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../assets/ui/img/ikon.png">
    <link rel="stylesheet" href="../assets/ui/bootstrap-5.2.1-dist/css/bootstrap.min.css">
    {{-- <link rel="stylesheet" href="../assets/ui/bootstrap-icons-1.10.2/bootstrap-icons.css"> --}}
    {{-- <link rel="stylesheet" href="../assets/ui/css/global.css"> --}}
    <style>
        h6 {
            font-size: 14px
        }

        label {
            font-size: 14px
        }
    </style>
</head>

<body style="font-size:12px">
    <main class="wrapper">
        <div class="container">
            @include('alert')
            @foreach ($master as $m)
                <div class="col-md-12">
                    <div class="bg-light border-0 text-center pt-2 pb-1">
                        <h6><b>Detail Personal</b></h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="row justify-content-center pt-2">
                            <div class="bg-light pb-3" style="width:auto">
                                <?php if($m->foto == ""){?>
                                <img src="../assets/img/user.png" style="object-fit: cover;border: 1px solid black;"
                                    width="177px" height="236px" alt="">
                                <?php } else{?>
                                <img src="../assets/img/karyawan/{{ $m->foto }}"
                                    style="object-fit: cover;border: 1px solid black;" width="177px" height="236px"
                                    alt="">
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="row mb-1">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Nama
                                        Lengkap</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="" style="min-height: 35px">: &nbsp {{ $m->nama }}</label>
                            </div>
                        </div>

                        <div class="row mb-1">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>No KTP</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="" style="min-height: 35px">: &nbsp {{ $m->nik }}</label>
                            </div>
                        </div>

                        <div class="row mb-1">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Departemen</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="" style="min-height: 35px">: &nbsp {{ $m->nama_departemen }}</label>
                            </div>
                        </div>

                        <div class="row mb-1">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Jabatan</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="" style="min-height: 35px">: &nbsp {{ $m->nama_jabatan }}</label>
                            </div>
                        </div>

                        <div class="row mb-1">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Pendidikan Terakhir</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="" style="min-height: 35px">: &nbsp
                                    @foreach ($pendidikanterakhir as $pt)
                                        {{ $pt->tingkat_pendidikan }}
                                    @endforeach
                                </label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <div class="row mb-1">
                                    <div class="col-6">
                                        <h6 class="form-label text-form"><b>Tanggal Lahir</b></h6>
                                    </div>
                                    <div class="col-6">
                                        <label class="" style="min-height: 35px">: &nbsp
                                            {{ $m->tanggal_lahir }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="row mb-1">
                                    <div class="col-5">
                                        <h6 class="form-label text-form"><b>Umur</b></h6>
                                    </div>
                                    <div class="col-7">
                                        @php
                                            $sekarang = strtotime(date('Y-m-d'));
                                            $tgl_lahir = strtotime($m->tanggal_lahir);
                                            $umur = $sekarang - $tgl_lahir;
                                        @endphp
                                        <label class="" style="min-height: 35px">: &nbsp
                                            {{ floor($umur / (3600 * 24 * 365)) }}
                                            Tahun</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <div class="row mb-1">
                                    <div class="col-6">
                                        <h6 class="form-label text-form"><b>Tanggal Bergabung</b></h6>
                                    </div>
                                    <div class="col-6">
                                        <label class="" style="min-height: 35px">: &nbsp
                                            {{ $m->tanggal }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="row mb-1">
                                    <div class="col-5">
                                        <h6 class="form-label text-form"><b>Masa Kerja</b></h6>
                                    </div>
                                    <div class="col-7">
                                        <label class="" style="min-height: 35px">: &nbsp
                                            @php
                                                $sekarang = strtotime(date('Y-m-d'));
                                                $tglgabung = strtotime($m->tanggal);
                                                $awal = date_create($m->tanggal);
                                                $akhir = date_create();
                                                $diff = date_diff($akhir, $awal);
                                                echo $hari = $diff->y . ' Tahun ' . $diff->m . ' Bulan';
                                            @endphp
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @if (count($cekriwkontrak) != 0 && count($cekriwtetap) != 0)
                            @foreach ($cekriwkontrak as $rk)
                            @endforeach
                            @foreach ($cekriwtetap as $rt)
                            @endforeach
                            <div class="row">
                                <div class="col-6">
                                    <div class="row mb-1">
                                        <div class="col-6">
                                            <h6 class="form-label text-form"><b>Tanggal Kontrak</b></h6>
                                        </div>
                                        <div class="col-6">
                                            <label style="min-height: 35px">: &nbsp
                                                @if ($rk->tanggal != '0000-00-00')
                                                    {{ date('d/m/Y', strtotime($rk->tanggal)) }}
                                                @else
                                                    {{ $rk->tanggal }}
                                                @endif
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="row mb-1">
                                        <div class="col-5">
                                            <h6 class="form-label text-form"><b>Masa Kerja Kontrak</b></h6>
                                        </div>
                                        <div class="col-7">
                                            <label style="min-height: 35px">: &nbsp
                                                @php
                                                    // $sekarang = strtotime(date('Y-m-d'));
                                                    $tglgabung = strtotime($rk->tanggal);
                                                    $awal = date_create($rk->tanggal);
                                                    $akhir = date_create($rt->tanggal);
                                                    $diff = date_diff($akhir, $awal);
                                                    echo $hari = $diff->y . ' Tahun ' . $diff->m . ' Bulan';
                                                @endphp
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if (count($cekriwkontrak) != 0 && count($cekriwtetap) == 0)
                            @foreach ($cekriwkontrak as $rk)
                            @endforeach
                            <div class="row">
                                <div class="col-6">
                                    <div class="row mb-1">
                                        <div class="col-6">
                                            <h6 class="form-label text-form"><b>Tanggal Kontrak</b></h6>
                                        </div>
                                        <div class="col-6">
                                            <label style="min-height: 35px">: &nbsp
                                                @if ($rk->tanggal != '0000-00-00')
                                                    {{ date('d/m/Y', strtotime($rk->tanggal)) }}
                                                @else
                                                    {{ $rk->tanggal }}
                                                @endif
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="row mb-1">
                                        <div class="col-5">
                                            <h6 class="form-label text-form"><b>Masa Kerja Kontrak</b></h6>
                                        </div>
                                        <div class="col-7">
                                            <label style="min-height: 35px">: &nbsp
                                                @php
                                                    // $sekarang = strtotime(date('Y-m-d'));
                                                    $tglgabung = strtotime($rk->tanggal);
                                                    $awal = date_create($rk->tanggal);
                                                    $akhir = date_create();
                                                    $diff = date_diff($akhir, $awal);
                                                    echo $hari = $diff->y . ' Tahun ' . $diff->m . ' Bulan';
                                                @endphp
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if (count($cekriwtetap) != 0)
                            @foreach ($cekriwtetap as $rt)
                            @endforeach
                            <div class="row">
                                <div class="col-6">
                                    <div class="row mb-1">
                                        <div class="col-6">
                                            <h6 class="form-label text-form"><b>Tanggal Tetap</b></h6>
                                        </div>
                                        <div class="col-6">
                                            <label style="min-height: 35px">: &nbsp
                                                @if ($rt->tanggal != '0000-00-00')
                                                    {{ date('d/m/Y', strtotime($rt->tanggal)) }}
                                                @else
                                                    {{ $rt->tanggal }}
                                                @endif
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="row mb-1">
                                        <div class="col-4">
                                            <h6 class="form-label text-form"><b>Masa Kerja Tetap</b></h6>
                                        </div>
                                        <div class="col-8">
                                            <label style="min-height: 35px">: &nbsp
                                                @php
                                                    $sekarang = strtotime(date('Y-m-d'));
                                                    $tglgabung = strtotime($rt->tanggal);
                                                    $awal = date_create($rt->tanggal);
                                                    $akhir = date_create();
                                                    $diff = date_diff($akhir, $awal);
                                                    echo $hari = $diff->y . ' Tahun ' . $diff->m . ' Bulan';
                                                @endphp
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
        </div>

        <div class="row col-md-12 pt-1" style="margin-right: 0px !important">
            @if ($pendidikan->count() != 0)
                <div class="col-md-6 col-12">
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-1">
                        <h6><b>Tabel Riwayat Pendidikan</b></h6>
                    </div>
                    <div class="table-responsive">
                        <table width='100%' class="table table-striped table-bordered">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th>No</th>
                                    <th>Tingkatan</th>
                                    <th>Nama Sekolah</th>
                                    <th>Jurusan</th>
                                    <th>Tahun Masuk</th>
                                    <th>Tahun Keluar</th>
                                </tr>
                            </thead>
                            <tbody>

                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($pendidikan as $p)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $p->tingkat_pendidikan }}</td>
                                        <td>{{ $p->nama_sekolah }}</td>
                                        <td>{{ $p->jurusan }}</td>
                                        <td>{{ $p->tgl_awal }}</td>
                                        <td>{{ $p->tgl_akhir }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
            @if ($historykerja->count() != 0)
                <div class="col-md-6 col-12">
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-1">
                        <h6><b>Tabel Riwayat Pekerjaan Sebelumnya</b></h6>
                    </div>
                    <div class="table-responsive">
                        <table width='100%' class="table table-striped table-bordered">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th>No</th>
                                    <th>Nama Perusahaan</th>
                                    <th>Alamat</th>
                                    <th>tanggal Masuk</th>
                                    <th>Tanggal Keluar</th>
                                    <th>Jabatan Terakhir</th>
                                    <th>Alasan Pindah</th>
                                </tr>
                            </thead>
                            <tbody>

                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($historykerja as $h)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $h->nama_perusahaan }}</td>
                                        <td>{{ $h->alamat }}</td>
                                        <td>{{ $h->tahun_masuk }}</td>
                                        <td>{{ $h->tahun_keluar }}</td>
                                        <td>{{ $h->jabatan_terakhir }}</td>
                                        <td>{{ $h->alasan_pindah }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>
        <div class="row col-md-12 pt-1" style="margin-right: 0px !important">
            @if ($bpjskes->count() != 0)
                <div class="col-md-6 col-12">
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-1">
                        <h6><b>BPJS Kesehatan</b></h6>
                    </div>
                    <div class="table-responsive">
                        <table id='mTable' width='100%' class="table table-striped table-bordered">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th>No</th>
                                    <th>Nomor BPJS</th>
                                    <th>Nama</th>
                                    <th>Kelas</th>
                                    <th>Iuran</th>
                                </tr>
                            </thead>
                            <tbody>

                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($bpjskes as $kes)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $kes->no_bpjs_kes }}</td>
                                        <td>{{ $kes->nama }}</td>
                                        <td>{{ $kes->kelas }}</td>
                                        <td>{{ $kes->iuran }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
            @if ($bpjstk->count() != 0)
                <div class="col-md-6 col-12">
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-1">
                        <h6><b>BPJS ketenagakerjaan</b></h6>
                    </div>
                    <div class="table-responsive">
                        <table id='mTable' width='100%' class="table table-striped table-bordered">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th>No</th>
                                    <th>Nomor BPJS</th>
                                    <th>Tanggal Kepesertaan</th>
                                    <th>Iuran</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($bpjstk as $tk)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $tk->no_bpjs_tk }}</td>
                                        <td>{{ $tk->tgl_kepesertaan }}</td>
                                        <td>{{ $tk->iuran }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>
        @if ($riwayatkaryawan->count() != 0)
            <div class="col-md-12 pt-3">
                <div class="bg-light border-0 text-center pt-2 pb-1 mb-1">
                    <h6><b>Tabel Riwayat Karir pada PT INDOSAR</b></h6>
                </div>
                <div class="table-responsive">
                    <table id='mTable' width='100%' class="table table-striped table-bordered">
                        <thead>
                            <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                <th>No</th>
                                <th>Tanggal</th>
                                <th>Jenis</th>
                                <th class="text-center">Deskripsi</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $no = 1;
                            @endphp
                            @foreach ($riwayatkaryawan as $rk)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $rk->tanggal }}</td>
                                    <td>{{ $rk->jenis }}</td>
                                    <td>{{ $rk->deskripsi }}</td>
                                    <td>
                                        @if ($rk->keterangan == '')
                                            {{ '-' }}
                                        @else
                                            {{ $rk->keterangan }}
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        @endif
        @endforeach
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
    window.print();
</script>

</html>
