<script>
    function hapus(master_id, name) {
        document.getElementById('master_id').value = master_id;
        document.getElementById('masterid').value = master_id;
        document.getElementById('name').innerHTML = name;
    }
</script>
<div class="modal fade" id="hapus_master" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Apakah anda yakin ingin Menonaktifkan <b><span id="name"></span></b> !<br>
                    Karena?
                </div>
            </div>
            <div class="modal-footer">
                <form action="/hapusMasterResign" method="post">
                    @csrf
                    <input type="hidden" id="master_id" name="id_master">
                    <button type="submit" class="btn btn-danger">Resign</button>
                </form>
                <form action="/hapusMasterPensiun" method="post">
                    @csrf
                    <input type="hidden" id="masterid" name="id_master">
                    <button type="submit" class="btn btn-warning">Pensiun</button>
                </form>

                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
            </div>
        </div>
    </div>
</div>
