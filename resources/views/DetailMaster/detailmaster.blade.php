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
    <style>
        .table-lg {
            max-width: 1000px;
        }
    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container">
            @include('alert')
            @foreach ($master as $m)
                <div class="col-lg-12">
                    <div class="float-end">
                        <a target="_blank" class="btn btn-md btn-secondary" href="/print/{{ $id_master }}">
                            <i class="bi bi-printer"></i>
                        </a>
                        <button data-bs-toggle="modal" data-bs-target="#editmaster" class="btn btn-md btn-secondary"
                            onclick="editmaster({{ $id_master }},'{{ $m->nama }}','{{ $m->nik }}','{{ $m->alamat }}','{{ $m->tempat_lahir }}','{{ $m->tanggal_lahir }}','{{ $m->jenis_kelamin }}','{{ $m->agama }}','{{ $m->no_hp }}','{{ $m->nokk }}','{{ $m->norekening }}')">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                    </div>
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                        <h6><b>Detail Personal</b></h6>
                    </div>
                </div>
                <div class="row pt-3">
                    <div class="col-lg-4">
                        <div class="row justify-content-center pt-2">
                            <div class="bg-light pt-3 pb-3" style="width:auto">
                                <?php if($m->foto == ""){?>
                                <img src="../assets/img/user.png" style="object-fit: cover;border: 1px solid black;"
                                    width="177px" height="236px" alt="">
                                <?php } else{?>
                                <img src="../assets/upload/karyawan/{{ $m->foto }}"
                                    style="object-fit: cover;border: 1px solid black;" width="177px" height="236px"
                                    alt="">
                                <?php } ?>
                            </div>
                            <div class="d-flex justify-content-center mt-3 mb-5">
                                <a type="button" onclick="ganti_foto({{ $id_master }},'{{ $m->nama }}')"
                                    data-bs-toggle="modal" data-bs-target="#ganti_foto" class="btn btn-sm btn-primary">
                                    Ganti Foto
                                </a>
                                <a href="/hapusFotoMaster/{{ $id_master }}" class="btn btn-sm btn-danger">
                                    Hapus
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Nama
                                        Lengkap</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nama }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>No KK</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nokk }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>No KTP</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nik }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>No Rekening</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->norekening }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>No Telp</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->no_hp }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Departemen</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nama_departemen }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Jabatan</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nama_jabatan }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Pendidikan Terakhir</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">
                                    @foreach ($pendidikanterakhir as $pt)
                                        {{ $pt->tingkat_pendidikan }}
                                    @endforeach
                                </label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <h6 class="form-label text-form"><b>Tanggal Lahir</b></h6>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-control"
                                            style="min-height: 35px">{{ date('d/m/Y', strtotime($m->tanggal_lahir)) }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <h6 class="form-label text-form"><b>Umur</b></h6>
                                    </div>
                                    <div class="col-md-8">
                                        @php
                                            $sekarang = strtotime(date('Y-m-d'));
                                            $tgl_lahir = strtotime($m->tanggal_lahir);
                                            $umur = $sekarang - $tgl_lahir;
                                        @endphp
                                        <label class="form-control"
                                            style="min-height: 35px">{{ floor($umur / (3600 * 24 * 365)) }}
                                            Tahun</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <h6 class="form-label text-form"><b>Tanggal Bergabung</b></h6>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-control" style="min-height: 35px">
                                            @if ($m->tanggal != '0000-00-00')
                                                {{ date('d/m/Y', strtotime($m->tanggal)) }}
                                            @else
                                                {{ $m->tanggal }}
                                            @endif
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <h6 class="form-label text-form"><b>Masa Kerja</b></h6>
                                    </div>
                                    <div class="col-md-8">
                                        <label class="form-control" style="min-height: 35px">
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
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <h6 class="form-label text-form"><b>Tanggal Kontrak</b></h6>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-control" style="min-height: 35px">
                                                @if ($rk->tanggal != '0000-00-00')
                                                    {{ date('d/m/Y', strtotime($rk->tanggal)) }}
                                                @else
                                                    {{ $rk->tanggal }}
                                                @endif
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <div class="col-md-4">
                                            <h6 class="form-label text-form"><b>Masa Kerja Kontrak</b></h6>
                                        </div>
                                        <div class="col-md-8">
                                            <label class="form-control" style="min-height: 35px">
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
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <h6 class="form-label text-form"><b>Tanggal Kontrak</b></h6>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-control" style="min-height: 35px">
                                                @if ($rk->tanggal != '0000-00-00')
                                                    {{ date('d/m/Y', strtotime($rk->tanggal)) }}
                                                @else
                                                    {{ $rk->tanggal }}
                                                @endif
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <div class="col-md-4">
                                            <h6 class="form-label text-form"><b>Masa Kerja Kontrak</b></h6>
                                        </div>
                                        <div class="col-md-8">
                                            <label class="form-control" style="min-height: 35px">
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
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <h6 class="form-label text-form"><b>Tanggal Tetap</b></h6>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-control" style="min-height: 35px">
                                                @if ($rt->tanggal != '0000-00-00')
                                                    {{ date('d/m/Y', strtotime($rt->tanggal)) }}
                                                @else
                                                    {{ $rt->tanggal }}
                                                @endif
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <div class="col-md-4">
                                            <h6 class="form-label text-form"><b>Masa Kerja Tetap</b></h6>
                                        </div>
                                        <div class="col-md-8">
                                            <label class="form-control" style="min-height: 35px">
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
                <div class="float-lg-end ">
                    <a href="/rekapabsensi/{{ $id_master }}" class="text-decoration-none">
                        <button class="btn btn-sm btn-secondary">
                            <i class="bi bi-card-heading"></i>
                            Rekap Absensi</button>
                    </a>
                    <a href="/documentmaster/{{ $id_master }}" class="text-decoration-none">
                        <button class="btn btn-sm btn-secondary">
                            <i class="bi bi-card-heading"></i>
                            Dokumen Karyawan</button>
                    </a>
                </div>
                <div class="row col-lg-12 pt-3" style="margin-right: 0px !important">
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button data-bs-toggle="modal" data-bs-target="#tambahpendidikan"
                                class="btn btn-md btn-secondary">
                                <i class="bi bi-plus-square"></i>
                            </button>
                        </div>
                        <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                            <h6><b>Tabel Riwayat Pendidikan</b></h6>
                        </div>
                        <div class="table-responsive">
                            <table width='100%' class="table table-striped table-bordered">
                                <thead>
                                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                        <th>Tingkatan</th>
                                        <th>Nama Sekolah</th>
                                        <th>Jurusan</th>
                                        <th>Tahun Masuk</th>
                                        <th>Tahun Keluar</th>
                                        <th>Sertifikat</th>
                                        <th>aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($pendidikan as $p)
                                        <tr>
                                            <td>
                                                @if ($p->tingkat_pendidikan == 'Lainnya')
                                                    {{ 'Profesi' }}
                                                @else
                                                    {{ $p->tingkat_pendidikan }}
                                                @endif
                                            </td>
                                            <td>{{ $p->nama_sekolah }}</td>
                                            <td>{{ $p->jurusan }}</td>
                                            <td>{{ $p->tgl_awal }}</td>
                                            <td>{{ $p->tgl_akhir }}</td>
                                            <td>
                                                @if ($p->sertifikat != '')
                                                    <a href="/assets/upload/sertifikatpend/{{ $p->sertifikat }}"
                                                        target="_blank">
                                                        <i class="bi bi-image"></i>
                                                    </a>
                                                @endif
                                            </td>
                                            <td>
                                                <div class="row justify-content-center">
                                                    <div style="max-width:60px">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#editpendidikan"
                                                            onclick="editpendidikan({{ $p->id_pendidikan }},'{{ $p->tingkat_pendidikan }}','{{ $p->nama_sekolah }}','{{ $p->jurusan }}','{{ $p->tgl_awal }}','{{ $p->tgl_akhir }}')"
                                                            class="btn btn-sm btn-primary btn-block">
                                                            <i class="bi bi-pencil-square"></i>
                                                        </button>
                                                    </div>
                                                    <div style="max-width:60px;">
                                                        <a type="button" class="btn btn-sm btn-danger btn-block"
                                                            href="/hapuspendidikan/{{ $p->id_pendidikan }}">
                                                            <i class="bi bi-trash3-fill"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button data-bs-toggle="modal" data-bs-target="#tambahriwayatkerja"
                                class="btn btn-md btn-secondary">
                                <i class="bi bi-plus-square"></i>
                            </button>
                        </div>
                        <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                            <h6><b>Tabel Riwayat Pekerjaan Sebelumnya</b></h6>
                        </div>
                        <div class="table-responsive">
                            <table width='100%' class="table table-striped table-bordered">
                                <thead>
                                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                        <th>Nama Perusahaan</th>
                                        <th>Alamat</th>
                                        <th>tanggal Masuk</th>
                                        <th>Tanggal Keluar</th>
                                        <th>Jabatan Terakhir</th>
                                        <th>Alasan Pindah</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($historykerja as $h)
                                        <tr>
                                            <td>{{ $h->nama_perusahaan }}</td>
                                            <td>{{ $h->alamat }}</td>
                                            <td>{{ date('d/m/Y', strtotime($h->tahun_masuk)) }}</td>
                                            <td>{{ date('d/m/Y', strtotime($h->tahun_keluar)) }}</td>
                                            <td>{{ $h->jabatan_terakhir }}</td>
                                            <td>{{ $h->alasan_pindah }}</td>
                                            <td>
                                                <div class="row justify-content-center">
                                                    <div style="max-width:60px">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#editriwayatkerja"
                                                            onclick="editriwayatkerja({{ $h->id }},'{{ $h->nama_perusahaan }}','{{ $h->alamat }}','{{ $h->tahun_masuk }}','{{ $h->tahun_keluar }}','{{ $h->jabatan_terakhir }}','{{ $h->alasan_pindah }}')"
                                                            class="btn btn-sm btn-primary btn-block">
                                                            <i class="bi bi-pencil-square"></i>
                                                        </button>
                                                    </div>
                                                    <div style="max-width:60px;">
                                                        <a type="button" class="btn btn-sm btn-danger btn-block"
                                                            href="/hapusriwayatkerja/{{ $h->id }}">
                                                            <i class="bi bi-trash3-fill"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row col-lg-12 pt-3" style="margin-right: 0px !important">
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button data-bs-toggle="modal" data-bs-target="#tambahbpjskes"
                                class="btn btn-md btn-secondary">
                                <i class="bi bi-plus-square"></i>
                            </button>
                        </div>
                        <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                            <h6><b>BPJS Kesehatan</b></h6>
                        </div>
                        <div class="table-responsive">
                            <table id='mTable' width='100%' class="table table-striped table-bordered">
                                <thead>
                                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                        <th>Nomor BPJS</th>
                                        <th>Nama</th>
                                        <th>Kelas</th>
                                        <th>Iuran</th>
                                        <th>aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($bpjskes as $kes)
                                        <tr>
                                            <td>{{ $kes->no_bpjs_kes }}</td>
                                            <td>{{ $kes->nama }}</td>
                                            <td>{{ $kes->kelas }}</td>
                                            <td>{{ $kes->iuran }}</td>
                                            <td>
                                                <div class="row justify-content-center">
                                                    <div style="max-width:60px">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#editbpjskes"
                                                            onclick="editbpjskes({{ $kes->id }},'{{ $kes->no_bpjs_kes }}','{{ $kes->nama }}','{{ $kes->kelas }}','{{ $kes->iuran }}')"
                                                            class="btn btn-sm btn-primary btn-block">
                                                            <i class="bi bi-pencil-square"></i>
                                                        </button>
                                                    </div>
                                                    <div style="max-width:60px;">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#hapusbpjskes"
                                                            onclick="hapusbpjskes({{ $kes->id }},'{{ $kes->no_bpjs_kes }}')"
                                                            class="btn btn-sm btn-danger btn-block">
                                                            <i class="bi bi-trash3-fill"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button data-bs-toggle="modal" data-bs-target="#tambahbpjstk"
                                class="btn btn-md
                                btn-secondary">
                                <i class="bi bi-plus-square"></i>
                            </button>
                        </div>
                        <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                            <h6><b>BPJS ketenagakerjaan</b></h6>
                        </div>
                        <div class="table-responsive">
                            <table id='mTable' width='100%' class="table table-striped table-bordered">
                                <thead>
                                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                        <th>Nomor BPJS</th>
                                        <th>Tanggal Kepesertaan</th>
                                        <th>Iuran</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($bpjstk as $tk)
                                        <tr>
                                            <td>{{ $tk->no_bpjs_tk }}</td>
                                            <td>{{ date('d/m/Y', strtotime($tk->tgl_kepesertaan)) }}</td>
                                            <td>{{ $tk->iuran }}</td>
                                            <td>
                                                <div class="row justify-content-center">
                                                    <div style="max-width:60px">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#editbpjstk"
                                                            onclick="editbpjstk({{ $tk->id }},'{{ $tk->no_bpjs_tk }}','{{ $tk->tgl_kepesertaan }}','{{ $tk->iuran }}')"
                                                            class="btn btn-sm btn-primary btn-block">
                                                            <i class="bi bi-pencil-square"></i>
                                                        </button>
                                                    </div>
                                                    <div style="max-width:60px;">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#hapusbpjstk"
                                                            onclick="hapusbpjstk({{ $tk->id }},'{{ $tk->no_bpjs_tk }}')"
                                                            class="btn btn-sm btn-danger btn-block">
                                                            <i class="bi bi-trash3-fill"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 pt-3">
                    <div class="float-end">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#tambahriwayatkaryawan"
                            onclick="tambahriwayatkaryawan('{{ $m->nama_jabatan }}')"
                            class="btn btn-md btn-secondary">
                            <i class="bi bi-plus-square"></i>
                        </button>
                    </div>
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
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
                                    {{-- <th>Aksi</th> --}}
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($riwayatkaryawan as $rk)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ date('d/m/Y', strtotime($rk->tanggal)) }}</td>
                                        <td>{{ $rk->jenis }}</td>
                                        <td>{{ $rk->deskripsi }}</td>
                                        <td>
                                            @if ($rk->jenis == 'Penghargaan')
                                                @if ($rk->keterangan == '')
                                                    {{ '-' }}
                                                @else
                                                    {{ $rk->keterangan }}
                                                @endif
                                                <a href="/assets/upload/sertifikatriw/{{ $rk->sertifikat }}"
                                                    target="_blank">
                                                    <i class="bi bi-image"></i>
                                                </a>
                                            @else
                                                @if ($rk->keterangan == '')
                                                    {{ '-' }}
                                                @else
                                                    {{ $rk->keterangan }}
                                                @endif
                                            @endif

                                        </td>
                                        {{-- <td>
                                            <div style="max-width:60px">
                                                <button type="button" data-bs-toggle="modal"
                                                    data-bs-target="#editriwayatkaryawan"
                                                    onclick="editriwayatkaryawan({{ $rk->id }},'{{ $rk->jenis }}','{{ $rk->jabatan }}','{{ $rk->keterangan }}','{{ $rk->tanggal }}','{{ $m->nama_jabatan }}')"
                                                    class="btn btn-sm btn-primary btn-block">
                                                    <i class="bi bi-pencil-square"></i>
                                                </button>
                                            </div>
                                        </td> --}}
                                        {{-- <td>
                                            <div class="row justify-content-center">
                                                <div style="max-width:60px">
                                                    <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#editriwayat"
                                                        onclick="editriwayat({{ $rk->id }},'{{ $rk->jenis }}','{{ $rk->jabatan }}','{{ $rk->keterangan }}','{{ $rk->tanggal }}')"
                                                        class="btn btn-sm btn-primary btn-block">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button>
                                                </div>
                                                <div style="max-width:60px;">
                                                    <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#hapusriwayat"
                                                        onclick="hapusriwayat({{ $rk->id }})"
                                                        class="btn btn-sm btn-danger btn-block">
                                                        <i class="bi bi-trash3-fill"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </td> --}}
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="col-lg-12">
                    <a href="/master"><button class="btn btn-sm btn-light mb-2" type="button">Kembali</button></a>
                </div>
            @endforeach
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

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
</script>
@include('DetailMaster.editdetailmaster')
@include('DetailMaster.editfotomaster')
@include('DetailMaster.tambahpendidikanmaster')
@include('DetailMaster.editpendidikan')
@include('DetailMaster.tambahriwayatpekerjaan')
@include('DetailMaster.editriwayatpekerjaan')
@include('DetailMaster.tambahbpjskes')
@include('DetailMaster.editbpjskes')
@include('DetailMaster.hapusbpjskes')
@include('DetailMaster.tambahbpjstk')
@include('DetailMaster.editbpjstk')
@include('DetailMaster.hapusbpjstk')
@include('DetailMaster.tambahriwayatkaryawan')
@include('DetailMaster.editriwayatkaryawan')

</html>
