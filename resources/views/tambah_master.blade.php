<!-- Modal Input Master -->
<div class="modal fade" id="tambah_master" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
            <input type="text" class="form-control mb-3" name="nama">
          <div class="row">
            <div class="col-lg-6"><label for="">NIK</label></div>
            <div class="col-lg-6"><label for="">Alamat</label></div>
          </div>
          <div class="row">
            <div class="col-lg-6"><input type="text" class="form-control" name="nik"></div>
            <div class="col-lg-6"><input type="text" class="form-control" name="alamat"></div>
          </div>
          <div class="row mt-3">
            <div class="col-lg-6"><label for="">Tempat lahir</label></div>
            <div class="col-lg-6"><label for="">Tanggal lahir</label></div>
          </div>
          <div class="row">
            <div class="col-lg-6"><input type="text" class="form-control" name="tempat_lahir"></div>
            <div class="col-lg-6"><input type="date" class="form-control" name="tanggal_lahir"></div>
          </div>
          <div class="row mt-3">
              <div class="col-lg-6"><label for="">Jenis Kelamin</label></div>
              <div class="col-lg-6"><label for="">Agama</label></div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <select type="select" class="form-control" name="jenis_kelamin">
                        <option value disabled selected>Pilih Jenis Kelamin</option>
                        <option value="laki-laki">Laki-laki</option>
                        <option value="perempuan">Perempuan</option>
                    </select>
                </div>
                <div class="col-lg-6"><input type="text" class="form-control" name="agama"></div>
            </div>
                <div class="row mt-3">
                  <div class="col-lg-6"><label for="">No. HP</label></div>
                  <div class="col-lg-6"><label for="">BPJS TK</label></div>
                </div>
                <div class="row">
                  <div class="col-lg-6"><input type="text" class="form-control" name="no_hp"></div>
                  <div class="col-lg-6"><input type="text" class="form-control" name="id_bpjs_tk"></div>
                </div>
                <div class="row mt-3">
                  <div class="col-lg-6"><label for="">Jabatan</label></div>
                  <div class="col-lg-6"><label for="">Golongan</label></div>
                </div>
                <div class="row">
                  <div class="col-lg-6"><input type="number" class="form-control" name="id_jabatan"></div>
                  <div class="col-lg-6"><input type="text" class="form-control" name="golongan"></div>
                </div>
                <div class="row mt-3">
                  <div class="col-lg-6"><label for="">Awal kerja</label></div>
                  <div class="col-lg-6"><label for="">Status pensiun</label></div>
                </div>
                <div class="row">
                  <div class="col-lg-6"><input type="date" class="form-control" name="awal_kerja"></div>
                  <div class="col-lg-6"><input type="text" class="form-control" name="status_pensiun"></div>
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