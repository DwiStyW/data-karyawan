<!-- Modal edit bpjskes -->
<div class="modal fade" id="edit_absensi" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit BPJS Kesehatan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/updateabsensi" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="date" class="form-control" placeholder="tanggal" id="tanggal"
                                    name="tanggal" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Pilih Karyawan</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="id_master" id="id_master" required>
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
                                <select class="form-select" name="jenis" id="jenis" required>
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
                                <textarea class="form-control" name="ket" id="ket" rows="4" placeholder="Keterangan" required></textarea>
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="id_absen" name="id_absen">
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
    function edit(id, id_master, tanggal, jenis, ket) {
        console.log(id, id_master, tanggal, jenis, ket)
        document.getElementById('id_absen').value = id;
        document.getElementById('id_master').value = id_master;
        document.getElementById('tanggal').value = tanggal;
        document.getElementById('jenis').value = jenis;
        document.getElementById('ket').value = ket;
        $(document).ready(function() {
            $('.form-select').select2({
                dropdownParent: $('#edit_absensi'),
            });
        });
    }
</script>
