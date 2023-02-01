<!-- Modal Input Master -->
<div class="modal fade" id="tambah_master" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Master</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postMaster" method="post">
                        @csrf
                        <label for="">Nama</label>
                        <input type="text" class="form-control" name="nama">
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">NIK</label>
                                <input type="text" class="form-control" name="nik">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Alamat</label>
                                <input type="text" class="form-control" name="alamat">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Tempat lahir</label>
                                <input type="text" class="form-control" name="tempat_lahir">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Tanggal lahir</label>
                                <input type="date" class="form-control" name="tanggal_lahir">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Jenis Kelamin</label>
                                <select type="select" class="form-control" name="jenis_kelamin">
                                    <option value disabled selected>Pilih Jenis Kelamin</option>
                                    <option value="laki-laki">Laki-laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Agama</label>
                                <input type="text" class="form-control" name="agama">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">No. HP</label>
                                <input type="text" class="form-control" name="no_hp">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">BPJS TK</label>
                                <input type="text" class="form-control" name="id_bpjs_tk">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Jabatan</label>
                                <input type="number" class="form-control" name="id_jabatan">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Golongan</label>
                                <input type="text" class="form-control" name="golongan">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Awal kerja</label>
                                <input type="date" class="form-control" name="awal_kerja">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Status pensiun</label>
                                <input type="text" class="form-control" name="status_pensiun">
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
