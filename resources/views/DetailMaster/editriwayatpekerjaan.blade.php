<!-- Modal edit riwayat -->
<div class="modal fade" id="editriwayatkerja" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit Riwayat Kerja</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/updateriwayatkerja" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama Perusahaan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" required name="nama_perusahaan"
                                    id="nama_perusahaan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Alamat Perusahaan</label>
                            </div>
                            <div class="col-lg-9">
                                <textarea type="text" class="form-control" name="alamat_perusahaan" id="alamat_perusahaan"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal Masuk</label>
                            </div>
                            <div class="col-lg-3">
                                <input type="date" class="form-control" name="tahun_masuk" id="tahun_masuk">
                            </div>
                            <div class="col-lg-3 d-flex justify-content-end">
                                <label for="">Tanggal Keluar</label>
                            </div>
                            <div class="col-lg-3">
                                <input type="date" class="form-control" name="tahun_keluar" id="tahun_keluar">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Jabatan Terakhir</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="jabatan_terakhir"
                                    id="jabatan_terakhir">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Alasan Pindah</label>
                            </div>
                            <div class="col-lg-9">
                                <textarea type="text" rows="4" class="form-control" name="alasan_pindah" id="alasan_pindah"></textarea>
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="master" name="id_master"
                            value="{{ $id_master }}">
                        <input type="hidden" class="form-control" id="id_history" name="id_history">
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
    function editriwayatkerja(id, namaperusahaan, alamat, thnmasuk, thnkeluar, jabatan, alasan) {
        console.log(id, namaperusahaan, alamat, thnmasuk, thnkeluar, jabatan, alasan);
        document.getElementById('id_history').value = id;
        document.getElementById('nama_perusahaan').value = namaperusahaan;
        document.getElementById('alamat_perusahaan').value = alamat;
        document.getElementById('tahun_masuk').value = thnmasuk;
        document.getElementById('tahun_keluar').value = thnkeluar;
        document.getElementById('jabatan_terakhir').value = jabatan;
        document.getElementById('alasan_pindah').value = alasan;
    }
</script>
