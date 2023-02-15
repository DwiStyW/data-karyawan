<!-- Modal edit foto -->
<div class="modal fade" id="ganti_foto" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Ganti Foto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/gantiFotoMaster" enctype="multipart/form-data" method="post">
                        @csrf
                        <label for="" class="mt-3">Upload Foto</label>
                        <input type="file" class="form-control" id="image" name="image">
                        <input type="hidden" class="form-control" id="id_masterfoto" name="id_masterfoto">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>

<script>
    function ganti_foto(id) {
        document.getElementById('id_masterfoto').value = id;
        console.dir(id);
    }
</script>
