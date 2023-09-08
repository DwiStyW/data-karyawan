<script>
    function setujui(id) {
        document.getElementById('id').value = id;
    }
</script>
<div class="modal fade" id="setujui" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Apakah anda yakin ingin menyetujui pengajuan karyawan ini?
                </div>
            </div>
            <div class="modal-footer">
                <form action="/persetujuan" method="post">
                    @csrf
                    <input type="hidden" id="id" name="id">
                    <button type="submit" class="btn btn-success">Setujui</button>
                </form>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
            </div>
        </div>
    </div>
</div>
