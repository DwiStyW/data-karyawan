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
                        <div class="col-lg-12 mt-3">
                            <label for="">Alamat</label>
                            <input id="alamat" type="text" class="form-control" name="alamat">
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mt-3">
                                <label for="">NIK</label>
                                <input id="nik" type="text" class="form-control" name="nik">
                            </div>

                            <div class="col-lg-6 mt-3">
                                <label for="">No. HP</label>
                                <input type="number" id="no_hp" class="form-control" name="no_hp">
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
                                <label for="">Jabatan</label>
                                <select name="id_jabatan" id="id_jabatan" class="form-select" required>
                                    <option value="" selected>Pilih Jabatan</option>
                                    @foreach ($jabatan as $j)
                                        <option value="{{ $j->id }}">{{ $j->nama_jabatan }}</option>
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
<script>
    function editmaster(id_master, nama, nik, alamat, tempat_lahir, tanggal_lahir, jenis_kelamin, agama, no_hp,
        id_jabatan, golongan, awal_kerja, status_pensiun) {
        console.log(id_master, nama, nik, alamat, tempat_lahir, tanggal_lahir, jenis_kelamin, agama, no_hp,
            id_jabatan, golongan, awal_kerja, status_pensiun);
        document.getElementById('id_master').value = id_master;
        document.getElementById('nama').value = nama;
        document.getElementById('nik').value = nik;
        document.getElementById('alamat').value = alamat;
        document.getElementById('tempat_lahir').value = tempat_lahir;
        document.getElementById('tanggal_lahir').value = tanggal_lahir;
        document.getElementById('jenis_kelamin').value = jenis_kelamin;
        document.getElementById('agama').value = agama;
        document.getElementById('no_hp').value = no_hp;
        document.getElementById('id_jabatan').value = id_jabatan;
        document.getElementById('golongan').value = golongan;
        document.getElementById('awal_kerja').value = awal_kerja;
        document.getElementById('status_pensiun').value = status_pensiun;
    }
</script>
