<!-- Modal tambah riwayat -->
<div class="modal fade" id="tambahriwayatkerja" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Riwayat Kerja</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postriwayatkerja" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama Perusahaan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" required placeholder="nama perusahaan"
                                    name="nama_perusahaan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Alamat Perusahaan</label>
                            </div>
                            <div class="col-lg-9">
                                <textarea type="text" class="form-control" placeholder="alamat perusahaan" name="alamat_perusahaan"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal Masuk</label>
                            </div>
                            <div class="col-lg-3">
                                <input type="date" class="form-control" name="tahun_masuk">
                            </div>
                            <div class="col-lg-3 d-flex justify-content-end">
                                <label for="">Tanggal Keluar</label>
                            </div>
                            <div class="col-lg-3">
                                <input type="date" class="form-control" name="tahun_keluar">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Jabatan Terakhir</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="jabatan terakhir"
                                    name="jabatan_terakhir">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Alasan Pindah</label>
                            </div>
                            <div class="col-lg-9">
                                <textarea type="text" rows="4" class="form-control" placeholder="alasan pindah" name="alasan_pindah"></textarea>
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="master" name="id_master"
                            value="{{ $id_master }}">
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
