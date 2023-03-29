<script>
    function hapusbpjstk(id, nomor) {
        document.getElementById('idtk').value = id;
        document.getElementById('nomortk').innerHTML = nomor;
    }
</script>
<div class="modal fade" id="hapusbpjstk" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Apakah anda yakin ingin menghapus BPJS Ketenagakerjaan <b><span id="nomortk"></span></b> !
                    <form action="/hapusbpjstk" method="post">
                        @csrf
                        <input type="hidden" id="idtk" name="id">
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
