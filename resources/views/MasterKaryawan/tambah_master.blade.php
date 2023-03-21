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
                    <form action="/postMaster" enctype="multipart/form-data" method="post">
                        @csrf
                        <label for="">Nama</label>
                        <input type="text" class="form-control" required name="nama" placeholder="nama">
                        <label for="" class="mt-3">Upload Foto</label>
                        <input type="file" class="form-control" name="image">
                        <div class="col-lg-12 mt-3">
                            <label for="">Alamat</label>
                            <input type="text" class="form-control" required name="alamat" placeholder="alamat">
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">NIK</label>
                                <input type="text" class="form-control" required name="nik" placeholder="nik">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">No. HP</label>
                                <input type="text" class="form-control" required name="no_hp" placeholder="no hp">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Tempat lahir</label>
                                <input type="text" class="form-control" required name="tempat_lahir"
                                    placeholder="tempat lahir">
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Tanggal lahir</label>
                                <input type="date" class="form-control" required name="tanggal_lahir">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Jenis Kelamin</label>
                                <select type="select" class="form-select select2" required name="jenis_kelamin">
                                    <option value disabled selected>Pilih Jenis Kelamin</option>
                                    <option value="laki-laki">Laki-laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Agama</label>
                                <select name="agama" id="agama" class="form-select select2" required>
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
                                <label for="">Jabatan</label>
                                {{-- <input type="number" class="form-control" required name="id_jabatan"> --}}
                                <select name="id_jabatan" id="id_jabatan" class="form-select select2" required>
                                    <option value="" selected>Pilih Jabatan</option>
                                    @foreach ($jabatan as $j)
                                        <option value="{{ $j->id }}">{{ $j->nama_jabatan }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for="">Status</label>
                                <select name="golongan" class="form-select select2" required>
                                    <option value="" selected disabled>Pilih Status</option>
                                    <option value="Tetap">Tetap</option>
                                    <option value="Kontrak Trainee">Kontrak Trainee</option>
                                    <option value="HL">HL</option>
                                    <option value="HL Magang">Hl Magang</option>
                                    <option value="HL Pekerja Luar">HL Pekerja Luar</option>
                                    {{-- <option value="HL Pensiun">Kontrak</option>
                                    <option value="Tetap">Tetap</option>
                                    <option value="Harian Lepas">Harian Lepas</option> --}}
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">Awal kerja</label>
                                <input type="date" class="form-control" required name="awal_kerja">
                            </div>
                            {{-- <div class="col-lg-6 mt-3">
                                <label for="">Status</label>
                                <select name="status_pensiun" class="form-select" required>
                                    <option value="" selected disabled>Pilih Status</option>
                                    <option value="Aktif">Aktif</option>
                                    <option value="Non Aktif">Non Aktif</option>
                                </select>
                            </div> --}}
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
