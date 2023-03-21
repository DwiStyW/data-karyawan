<!-- Modal edit bpjskes -->
<div class="modal fade" id="editbpjskes" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit BPJS Kesehatan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/updatebpjskes" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nomor BPJS Kesehatan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="Nomor BPJS" required
                                    name="no_bpjs_kes" id="no_bpjs_kes">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="nama" name="nama"
                                    id="nama_pengguna">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Kelas</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="kelas" name="kelas"
                                    id="kelas">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Iuran</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="iuran" name="iuran"
                                    id="iuran">
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="master" name="id_master"
                            value="{{ $id_master }}">
                        <input type="hidden" class="form-control" id="id_bpjskes" name="id_bpjskes">
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
    function editbpjskes(id, nomor, nama, kelas, iuran) {
        // console.log(id, nomor, nama, tanggungan, kelas, iuran)
        document.getElementById('id_bpjskes').value = id;
        document.getElementById('no_bpjs_kes').value = nomor;
        document.getElementById('nama_pengguna').value = nama;
        document.getElementById('kelas').value = kelas;
        document.getElementById('iuran').value = iuran;
    }
</script>
