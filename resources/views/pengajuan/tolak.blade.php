<script>
    function tolak(id) {
        document.getElementById('id_pengajuan').value = id;
    }
</script>
<div class="modal fade" id="tolak" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/tolakpengajuan" method="post">
                    @csrf
                    <div class="container-fluid">
                        Apakah anda yakin ingin menolak pengajuan karyawan ini?
                        <div class="mt-3">
                            <b>Catatan Penolakan</b>
                            <textarea type="text" name="alasan" class="form-control" rows="3"></textarea>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="id_pengajuan" name="id_pengajuan">
                <button type="submit" class="btn btn-danger">Tolak</button>
                </form>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
            </div>
        </div>
    </div>
</div>
