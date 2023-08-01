<!-- Modal tambah bpjskes -->
<style>
    .select2 {
        width: 100% !important;
    }

    .modal-body {
        overflow-x: hidden !important;
    }
</style>
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
                                <input type="date" class="form-control" placeholder="tanggal" name="tanggal"
                                    required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Pilih Karyawan</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="id_master" required>
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
                                <select class="form-select" name="jenis" required>
                                    <option value="" disabled selected>Pilih Jenis</option>
                                    <option value="ijin">Ijin</option>
                                    <option value="sakit">Sakit</option>
                                    <option value="cuti">Cuti</option>
                                    <option value="alpha">Alpha</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Keterangan</label>
                            </div>
                            <div class="col-lg-9">
                                <div class="row mb-1">
                                    <div class="w-auto">
                                        <input type="radio" id="html" name="surat" value="ada">
                                    </div>
                                    <div class="w-auto">
                                        <label class="ps-0" for="html">Dengan Surat</label>
                                    </div>
                                    <div class="w-auto">
                                        <input type="radio" id="html" name="surat" value="tidak">
                                    </div>
                                    <div class="w-auto">
                                        <label class="ps-0" for="html">Tanpa Surat</label>
                                    </div>
                                </div>
                                <textarea class="form-control" name="ket" rows="4" placeholder="Keterangan"></textarea>
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
