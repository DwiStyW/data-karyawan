<!-- Modal Input Jabatan -->
<div class="modal fade" id="tambah_Jabatan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Jabatan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postJabatan" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama Jabatan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" required name="nama_jabatan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Departemen</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="departemen">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Bagian</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="bagian">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Sie</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="sie">
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
