<!-- Modal tambah bpjskes -->
<div class="modal fade" id="tambahabsensi" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Absensi</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postabsensi" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="date" class="form-control" placeholder="tanggal" name="tanggal">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Pilih Karyawan</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="id_master">
                                    <option value="0" disabled selected>Pilih nama</option>
                                    @foreach ($master as $m)
                                        <option value="{{ $m->id }}">{{ $m->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Jenis</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="jenis">
                                    <option value="" disabled selected>Pilih Jenis</option>
                                    <option value="">Ijin</option>
                                    <option value="">Sakit</option>
                                    <option value="">Cuti</option>
                                    <option value="">Alpha</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Keterangan</label>
                            </div>
                            <div class="col-lg-9">
                                <textarea class="form-control" name="ket" id="ket" rows="5" placeholder="Keterangan"></textarea>
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
