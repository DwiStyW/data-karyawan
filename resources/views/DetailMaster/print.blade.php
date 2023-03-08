<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/ui/bootstrap-5.2.1-dist/css/bootstrap.min.css">
    {{-- <link rel="stylesheet" href="../assets/ui/bootstrap-icons-1.10.2/bootstrap-icons.css"> --}}
    {{-- <link rel="stylesheet" href="../assets/ui/css/global.css"> --}}
</head>

<body>
    <main class="wrapper">
        <div class="container">
            @foreach ($master as $m)
                <div class="col-sm-12">
                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                        <h6><b>Detail Personal</b></h6>
                    </div>
                </div>
                <div class="row pb-3">
                    <div class="col-sm-4">
                        <div class="row justify-content-center pt-2">
                            <div class="bg-light pt-3 pb-3" style="width:auto">
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
                    <div class="col-sm-8 mt-3">
                        <div class="row mb-3">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Nama
                                        Lengkap</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nama }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>No KTP</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nik }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Departemen</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nama_departemen }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Jabatan</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nama_jabatan }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-3">
                                <h6 class="form-label text-form"><b>Pendidikan Terakhir</b></h6>
                            </div>
                            <div class="col-9">
                                <label class="form-control" style="min-height: 35px">
                                    @foreach ($pendidikanterakhir as $pt)
                                        {{ $pt->nama_sekolah }}
                                    @endforeach
                                </label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <h6 class="form-label text-form"><b>Tanggal Lahir</b></h6>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-control"
                                            style="min-height: 35px">{{ $m->tanggal_lahir }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="row mb-3">
                                    <div class="col-4">
                                        <h6 class="form-label text-form"><b>Umur</b></h6>
                                    </div>
                                    <div class="col-8">
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
                            <div class="col-6">
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <h6 class="form-label text-form"><b>Tanggal Bergabung</b></h6>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-control"
                                            style="min-height: 35px">{{ $m->awal_kerja }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="row mb-3">
                                    <div class="col-4">
                                        <h6 class="form-label text-form"><b>Masa Kerja</b></h6>
                                    </div>
                                    <div class="col-8">
                                        <label class="form-control" style="min-height: 35px">
                                            @php
                                                $sekarang = strtotime(date('Y-m-d'));
                                                $tglgabung = strtotime($m->awal_kerja);
                                                $awal = date_create($m->awal_kerja);
                                                $akhir = date_create();
                                                $diff = date_diff($akhir, $awal);
                                                echo $hari = $diff->y . ' Tahun ' . $diff->m . ' Bulan';
                                            @endphp
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row col-sm-12 pt-5 " style="margin-right: 0px !important; border-top:1px solid #ddd">
                    <div class="col-sm-6 col-12">
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
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($pendidikan as $p)
                                        <tr>
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
                    <div class="col-sm-6 col-12">

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
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($historykerja as $h)
                                        <tr>
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
                </div>
                <div class="row col-sm-12 pt-3" style="margin-right: 0px !important">
                    <div class="col-sm-6 col-12">

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
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($bpjskes as $kes)
                                        <tr>
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
                    <div class="col-sm-6 col-12">

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
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($bpjstk as $tk)
                                        <tr>
                                            <td>{{ $tk->no_bpjs_tk }}</td>
                                            <td>{{ $tk->tgl_kepesertaan }}</td>
                                            <td>{{ $tk->iuran }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 pt-3">

                    <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                        <h6><b>Tabel Riwayat Karir pada PT INDOSAR</b></h6>
                    </div>
                    <div class="table-responsive">
                        <table id='mTable' width='100%' class="table table-striped table-bordered">
                            <thead>
                                <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                    <th>No</th>
                                    <th>Alamat</th>
                                    <th>Tanggal</th>
                                    <th>Deskripsi</th>
                                    <th>Keterangan</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            @endforeach
        </div>
        @include('partials.footer')
    </main>
</body>
<script>
    window.print()
</script>

</html>