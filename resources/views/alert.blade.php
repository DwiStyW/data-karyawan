{{-- alert message --}}
@if (Session::get('success'))
<div class="alert alert-success" role="alert">
    <i class="bi bi-check-circle-fill"></i> {{ Session::get('success') }}
</div>
@endif
@if (Session::get('failed'))
<div class="alert alert-danger" id="liveAlertBtn" role="alert">
    <i class="bi bi-exclamation-triangle-fill"></i> {{ Session::get('failed') }}
</div>
@endif