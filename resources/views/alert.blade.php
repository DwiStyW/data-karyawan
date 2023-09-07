{{-- alert message --}}
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if (Session::get('success'))
    <script>
    Swal.fire({
      icon: 'success',
      title:'<h3 style="color:white">Berhasil!</h3>',
      html: '<h5 style="color:white">{{Session::get("success")}}</h5>',
      showConfirmButton: false,
      timer: 2000,
      timerProgressBar: true,
      iconColor:'white',
      textColor:'white',
      customClass: {
        popup: 'bg-success'
      },
    })
    </script>
@endif
@if (Session::get('failed'))
    <script>
    Swal.fire({
      icon: 'error',
      title:'<h3 style="color:white">Gagal!</h3>',
      html: '<h5 style="color:white">{{Session::get("failed")}}</h5>',
      showConfirmButton: false,
      timer: 2000,
      timerProgressBar: true,
      iconColor:'white',
      customClass: {
        popup: 'bg-danger'
      },
    })
    </script>
@endif
@if (Session::get('delete'))
    <script>
    Swal.fire({
      title: 'Are you sure?',
      text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire(
          'Deleted!',
          'Your file has been deleted.',
          'success'
        )
      }
    })
    </script>
@endif