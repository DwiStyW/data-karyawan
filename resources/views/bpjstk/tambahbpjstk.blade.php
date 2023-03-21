<!-- Modal tambah bpjskes -->
<div class="modal fade" id="tambahbpjstk" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah BPJS Ketenagakerjaan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postbpjstk" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Pilih Karyawan</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="id_master" onchange="selectdepartemen()">
                                    <option value="0" disabled selected>Pilih Karyawan</option>
                                    @foreach ($master as $m)
                                        <option value="{{ $m->id }}">{{ $m->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nomor BPJS Ketenagakerjaan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="Nomor BPJS" required
                                    name="no_bpjs_tk">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal Kepesertaan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="date" class="form-control" placeholder="nama" name="tgl_kepesertaan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Iuran</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="iuran" name="iuran">
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
