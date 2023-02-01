{{-- alert message --}}
@if (Session::get('success'))
<div id="berhasil" onload="time()">
<div class="alert alert-success alert-dismissible" role="alert">
    <i class="bi bi-check-circle-fill"></i> {{ Session::get('success') }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</div>
<script>
    const waktu = setTimeout(time,10000);
    function time(){
        document.getElementById('berhasil').innerHTML='';
    }
</script>
@endif
@if (Session::get('failed'))
<div id="gagal" onload="time()">
<div class="alert alert-danger alert-dismissible" role="alert">
    <i class="bi bi-exclamation-triangle-fill"></i> {{ Session::get('failed') }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</div>
<script>
    const waktu = setTimeout(time,10000);
    function time(){
        document.getElementById('gagal').innerHTML='';
    }
</script>
@endif