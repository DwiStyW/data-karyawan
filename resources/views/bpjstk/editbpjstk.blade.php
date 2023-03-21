<!-- Modal edit bpjskes -->
<div class="modal fade" id="editbpjstk" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit BPJS Kesehatan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/updatebpjstk" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Pilih Master</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="id_master" id="id_master"
                                    onchange="selectdepartemen()">
                                    <option value="0" disabled selected>Pilih Master</option>
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
                                    name="no_bpjs_tk" id="no_bpjs_tk">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal Kepesertaan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="date" class="form-control" placeholder="nama" name="tgl_kepesertaan"
                                    id="tgl_kepesertaan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Iuran</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" placeholder="iuran" name="iuran"
                                    id="iurantk">
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="id_bpjstk" name="id_bpjstk">
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
    function editbpjstk(id, id_master, nomor, tanggal, iuran) {
        console.log(id, id_master, nomor, tanggal, iuran)
        document.getElementById('id_bpjstk').value = id;
        document.getElementById('no_bpjs_tk').value = nomor;
        document.getElementById('tgl_kepesertaan').value = tanggal;
        document.getElementById('iurantk').value = iuran;
        document.getElementById('id_master').value = id_master;
    }
</script>
