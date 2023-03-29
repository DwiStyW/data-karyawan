<script>
    function hapusbpjskes(id, nomor) {
        document.getElementById('id').value = id;
        document.getElementById('nomor').innerHTML = nomor;
    }
</script>
<div class="modal fade" id="hapusbpjskes" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Apakah anda yakin ingin menonaktifkan BPJS kesehatan <br>
                    dengan nomor <b><span id="nomor"></span></b> !
                    <form action="/hapusbpjskes" method="post">
                        @csrf
                        
                        <label class="mt-5" for="alasan">Alasan menonaktifkan</label>
                        <textarea class="form-control" rows="3" type="text" name="alasan"></textarea>
                        <input type="hidden" id="id" name="id">
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
