<script>
    function hapus(id, nama, tanggal) {
        console.log(id);
        document.getElementById('absen_id').value = id;
        document.getElementById('absen_nama').innerHTML = nama;
        document.getElementById('tgl').innerHTML = tanggal;
    }
</script>
<div class="modal fade" id="hapus_absensi" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Apakah anda yakin ingin menghapus riwayat absensi <b><span id="absen_nama"></span></b> !<br>
                    Pada tanggal <b><span id="tgl"></span></b>
                    <form action="/hapusabsensi" method="post">
                        @csrf
                        <input type="hidden" id="absen_id" name="absen_id">
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
