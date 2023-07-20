<script>
    function mengetahui(tanggal) {
        console.log(tanggal);
        var href = '<a href="/distribusi-absensi/' + tanggal + '"  class="btn btn-primary">Ya</a>'
        document.getElementById("submit").innerHTML = href;

        var ts = Number(tanggal);
        var tgl = new Date(ts).toLocaleDateString('en-GB');
        document.getElementById("tgl").innerHTML = tgl;
    }
</script>
<div class="modal fade" id="mengetahui_absensi" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    Mengetahui tanggal absensi <b>
                        <span id="tgl"></span>
                    </b>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                <div id="submit"></div>
            </div>
            </form>
        </div>
    </div>
</div>
