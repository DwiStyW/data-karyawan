<script>
    function hapus(master_id,name){
        document.getElementById('master_id').value = master_id;
        document.getElementById('name').innerHTML = name;
    }
</script>
<div class="modal fade" id="hapus_master" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi!</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="container-fluid">
                Apakah anda yakin ingin menghapus <b><span id="name"></span></b> !
        <form action="/hapusMaster" method="post">
            @csrf
           <input type="hidden" id="master_id" name="id_master">
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
