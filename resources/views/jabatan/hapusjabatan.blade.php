<script>
    function hapusjabatan(id_jabatan, nama_jabatan) {
        console.log(id_jabatan);
        document.getElementById('jabatan_id').value = id_jabatan;
        document.getElementById('jabatan_nama').innerHTML = nama_jabatan;
    }
</script>
<div class="modal fade" id="hapusjabatan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Apakah anda yakin ingin menghapus <b><span id="jabatan_nama"></span></b> !
                    <form action="/hapusJabatan" method="post">
                        @csrf
                        <input type="hidden" id="jabatan_id" name="jabatan_id">
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
