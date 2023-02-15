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
                        <button data-bs-toggle="modal" data-bs-target="#editmaster" class="btn btn-md btn-secondary"
                            onclick="editmaster({{ $m->id }},'{{ $m->nama }}','{{ $m->nik }}','{{ $m->alamat }}','{{ $m->tempat_lahir }}','{{ $m->tanggal_lahir }}','{{ $m->jenis_kelamin }}','{{ $m->agama }}','{{ $m->no_hp }}','{{ $m->id_bpjs_tk }}','{{ $m->id_jabatan }}','{{ $m->golongan }}','{{ $m->awal_kerja }}','{{ $m->status_pensiun }}')">
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
                                <img src="../assets/img/karyawan/{{ $m->foto }}"
                                    style="object-fit: cover;border: 1px solid black;" width="177px" height="236px"
                                    alt="">
                                <?php } ?>
                            </div>
                            <div class="d-flex justify-content-center mt-3 mb-5">
                                <a type="button" onclick="ganti_foto({{ $m->id }})" data-bs-toggle="modal"
                                    data-bs-target="#ganti_foto" class="btn btn-sm btn-primary">
                                    Ganti Foto
                                </a>
                                <a href="/hapusFotoMaster/{{ $m->id }}" class="btn btn-sm btn-danger">
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
                                <h6 class="form-label text-form"><b>No KTP</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->nik }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Departemen</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control" style="min-height: 35px">{{ $m->departemen }}</label>
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
                                <label class="form-control" style="min-height: 35px">x</label>
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
                                            style="min-height: 35px">{{ $m->tanggal_lahir }}</label>
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
                                        <label class="form-control"
                                            style="min-height: 35px">{{ $m->awal_kerja }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <h6 class="form-label text-form"><b>Masa Kerja</b></h6>
                                    </div>
                                    <div class="col-md-8">
                                        <label class="form-control" style="min-height: 35px">x</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                            <table id='mTable' width='100%' class="table table-striped table-bordered">
                                <thead>
                                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                        <th>Tingkatan</th>
                                        <th>Nama Sekolah</th>
                                        <th>Jurusan</th>
                                        <th>Tahun Masuk</th>
                                        <th>Tahun Keluar</th>
                                        <th>aksi</th>
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
                                            <td></td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button class="btn btn-md btn-secondary">
                                <i class="bi bi-plus-square"></i>
                            </button>
                        </div>
                        <div class="bg-light border-0 text-center pt-2 pb-1 mb-3">
                            <h6><b>Tabel Riwayat Pekerjaan Sebelumnya</b></h6>
                        </div>
                        <div class="table-responsive">
                            <table id='mTable' width='100%' class="table table-striped table-bordered">
                                <thead>
                                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                                        <th>Nama Perusahaan</th>
                                        <th>Alamat</th>
                                        <th>Tahun Masuk</th>
                                        <th>Tahun Keluar</th>
                                        <th>Jabatan Terakhir</th>
                                        <th>Alasan Pindah</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row col-lg-12 pt-3" style="margin-right: 0px !important">
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button class="btn btn-md btn-secondary">
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
                                        <th>Tanggungan</th>
                                        <th>Kelas</th>
                                        <th>Iuran</th>
                                        <th>aksi</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="float-end">
                            <button class="btn btn-md btn-secondary">
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
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 pt-3">
                    <div class="float-end">
                        <button class="btn btn-md btn-secondary">
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
                                    <th>Alamat</th>
                                    <th>Tanggal</th>
                                    <th>Deskripsi</th>
                                    <th>Keterangan</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

                <div class="col-lg-12">
                    <a href="/master"><button class="btn btn-sm btn-light mb-2" type="button">Kembali</button></a>
                    <a href="#"><button class="btn btn-sm btn-secondary mb-2"
                            type="submit">Mutasi</button></a>
                </div>
            @endforeach
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<!-- Modal Edit Master -->
<div class="modal fade" id="editmaster" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit Master</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/updateMaster" method="post">
                        @csrf
                        <label for="">Nama</label>
                        <input type="text" id="nama" class="form-control" name="nama">
                        <input type="hidden" id="id_master" class="form-control mb-3" name="id_master">
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">NIK</label>
                                <input id="nik" type="text" class="form-control" name="nik">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Alamat</label>
                                <input id="alamat" type="text" class="form-control" name="alamat">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Tempat lahir</label>
                                <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Tanggal lahir</label>
                                <input type="date" class="form-control" id="tanggal_lahir" name="tanggal_lahir">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Jenis Kelamin</label>
                                <select type="select" id="jenis_kelamin" class="form-control" name="jenis_kelamin">
                                    <option value disabled selected>Pilih Jenis Kelamin</option>
                                    <option value="laki-laki">Laki-laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Agama</label>
                                <select name="agama" id="agama" class="form-select" required>
                                    <option value="" selected>Pilih Agama</option>
                                    <option value="Islam">Islam</option>
                                    <option value="Protestan">Protestan</option>
                                    <option value="Katolik">Katolik</option>
                                    <option value="Hindu">Hindu</option>
                                    <option value="Buddha">Buddha</option>
                                    <option value="Khonghucu">Khonghucu</option>
                                    <option value="Lainnya">Lainnya</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">No. HP</label>
                                <input type="number" id="no_hp" class="form-control" name="no_hp">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">BPJS TK</label>
                                <input type="text" id="id_bpjs_tk" class="form-control" name="id_bpjs_tk">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Jabatan</label>
                                <select name="id_jabatan" id="id_jabatan" class="form-select" required>
                                    <option value="" selected>Pilih Jabatan</option>
                                    @foreach ($jabatan as $j)
                                        <option value="{{ $j->id_jabatan }}">{{ $j->nama_jabatan }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Golongan</label>
                                <input type="text" class="form-control" id="golongan" name="golongan">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Awal kerja</label>
                                <input type="date" id="awal_kerja" class="form-control" name="awal_kerja">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Status pensiun</label>
                                <input type="text" id="status_pensiun" class="form-control"
                                    name="status_pensiun">
                            </div>
                        </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>



<!-- Modal edit foto -->
<div class="modal fade" id="ganti_foto" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Ganti Foto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/gantiFotoMaster" enctype="multipart/form-data" method="post">
                        @csrf
                        <label for="" class="mt-3">Upload Foto</label>
                        <input type="file" class="form-control" id="image" name="image">
                        <input type="hidden" class="form-control" id="id_masterfoto" name="id_masterfoto">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal tambah pendidikan -->
<div class="modal fade" id="tambahpendidikan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Pendidikan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body bg-light">
                <div class="container-fluid">
                    <form action="/postpendidikan" enctype="multipart/form-data" method="post">
                        @csrf
                        @foreach ($bataspensiun as $bp)
                            <div class="card bordered mb-4 pt-3"style="padding-left:20px;padding-right:20px">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <label for="">{{ $bp->tingkatan_pendidikan }}</label>
                                    </div>
                                    <div class="col-lg-10 mb-3">
                                        <input type="text" class="form-control" placeholder="nama sekolah"
                                            id="pendidikan{{ $bp->tingkatan_pendidikan }}"
                                            name="pendidikan{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                </div>
                                @if (
                                    $bp->tingkatan_pendidikan == 'SMA' or
                                        $bp->tingkatan_pendidikan == 'S1' or
                                        $bp->tingkatan_pendidikan == 'S2' or
                                        $bp->tingkatan_pendidikan == 'Lainnya')
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <label for="">Jurusan</label>
                                        </div>
                                        <div class="col-lg-10 mb-3">
                                            <input type="text" class="form-control" placeholder="nama jurusan"
                                                id="jurusan{{ $bp->tingkatan_pendidikan }}"
                                                name="jurusan{{ $bp->tingkatan_pendidikan }}">
                                        </div>
                                    </div>
                                @endif

                                <div class="row">
                                    <div class="col-lg-2">
                                        <label for="">Masuk</label>
                                    </div>
                                    <div class="col-lg-4 mb-3">
                                        <input type="date" class="form-control"
                                            id="masuk{{ $bp->tingkatan_pendidikan }}"
                                            name="masuk{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                    <div class="col-lg-2">
                                        <label for="">Keluar</label>
                                    </div>
                                    <div class="col-lg-4 mb-3">
                                        <input type="date" class="form-control"
                                            id="keluar{{ $bp->tingkatan_pendidikan }}"
                                            name="keluar{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                </div>
                                {{-- <div class="row">
                                    <div class="col-lg-2">
                                        <label for="">Ijasah</label>
                                    </div>
                                    <div class="col-lg-10 mb-3">
                                        <input type="file" class="form-control"
                                            id="ijasa{{ $bp->tingkatan_pendidikan }}"
                                            name="ijasa{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                </div> --}}
                            </div>
                        @endforeach
                        <input type="hidden" class="form-control" id="master" name="id_master"
                            value="{{ $m->id }}">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>

<script>
    function ganti_foto(id) {
        document.getElementById('id_masterfoto').value = id;
        console.dir(id);
    }

    function editmaster(id_master, nama, nik, alamat, tempat_lahir, tanggal_lahir, jenis_kelamin, agama, no_hp,
        id_bpjs_tk,
        id_jabatan, golongan, awal_kerja, status_pensiun) {
        document.getElementById('id_master').value = id_master;
        document.getElementById('nama').value = nama;
        document.getElementById('nik').value = nik;
        document.getElementById('alamat').value = alamat;
        document.getElementById('tempat_lahir').value = tempat_lahir;
        document.getElementById('tanggal_lahir').value = tanggal_lahir;
        document.getElementById('jenis_kelamin').value = jenis_kelamin;
        document.getElementById('agama').value = agama;
        document.getElementById('no_hp').value = no_hp;
        document.getElementById('id_bpjs_tk').value = id_bpjs_tk;
        document.getElementById('id_jabatan').value = id_jabatan;
        document.getElementById('golongan').value = golongan;
        document.getElementById('awal_kerja').value = awal_kerja;
        document.getElementById('status_pensiun').value = status_pensiun;
    }
</script>

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

</html>
