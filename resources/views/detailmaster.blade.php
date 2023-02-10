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
            @foreach ($master as $m)
                <div class="col-lg-12">
                    <div class="bg-light border-0 text-center pt-2">
                        <h4><b>Detail Personal</b></h4>
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
                                        <img src="../assets/img/karyawan/{{ $m->foto }}" style="object-fit: cover;border: 1px solid black;"
                                            width="177px" height="236px" alt="">
                                    <?php } ?>
                            </div>
                            <div class="d-flex justify-content-center mt-3 mb-5">
                                <a type="button" onclick="ganti_foto(`{{ $m->id }}`)" data-bs-toggle="modal" data-bs-target="#ganti_foto" class="btn btn-sm btn-primary">
                                    Ganti Foto
                                </a>
                                <a class="btn btn-sm btn-danger">
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
                                <label class="form-control">{{ $m->nama }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>No KTP</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control">{{ $m->nik }}</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Departemen</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control">x</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Jabatan</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control">x</label>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-3">
                                <h6 class="form-label text-form"><b>Pendidikan Terakhir</b></h6>
                            </div>
                            <div class="col-md-9">
                                <label class="form-control">x</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <h6 class="form-label text-form"><b>Tanggal Lahir</b></h6>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-control">{{ $m->tanggal_lahir }}</label>
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
                                            $sekarang = strtotime(date("Y-m-d"));
                                            $tgl_lahir = strtotime($m->tanggal_lahir);
                                            $umur = $sekarang - $tgl_lahir;
                                        @endphp
                                        <label class="form-control">{{ floor($umur/(3600 * 24 * 365)) }} Tahun</label>
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
                                        <label class="form-control">{{ $m->awal_kerja }}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <h6 class="form-label text-form"><b>Masa Kerja</b></h6>
                                    </div>
                                    <div class="col-md-8">
                                        <label class="form-control">x</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row col-lg-12 pt-3" style="margin-right: 0px !important">
                    <div class="col-lg-6 col-md-12">
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
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
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
                    <a href="#"><button class="btn btn-sm btn-info mb-2" type="button">Kembali</button></a>
                    <a href="#"><button class="btn btn-sm btn-primary mb-2" type="submit">Input
                            Riwayat Karir</button></a>
                    <a href="#"><button class="btn btn-sm btn-warning mb-2" type="submit">Edit
                            Data</button></a>
                    <a href="#"><button class="btn btn-sm btn-info mb-2" type="submit">Riwayat
                            Pendidikan</button></a>
                    <a href="#"><button class="btn btn-sm btn-primary mb-2" type="submit">Riwayat
                            Pekerjaan</button></a>
                    <a href="#"><button class="btn btn-sm btn-warning mb-2" type="submit">Mutasi</button></a>
                </div>
            @endforeach
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>

<!-- Modal Input Master -->
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
                    <form action="/postMaster" enctype="multipart/form-data" method="post">
                        @csrf
                        <label for="" class="mt-3">Upload Foto</label>
                        <input type="file" class="form-control" id="image" name="image">
                        <input type="text" class="form-control" id="id_master" name="id">
                        
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

<script>
    function ganti_foto(id){
        document.getElementById('id_master').value = id;
        console.log(id);
        console.log(image);
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