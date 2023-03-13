<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../assets/ui/img/ikon.png">
    <link rel="stylesheet" href="../assets/ui/bootstrap-5.2.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/ui/bootstrap-icons-1.10.2/bootstrap-icons.css">
    <link rel="stylesheet" href="../assets/ui/css/global.css">
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3 d-flex justify-content-between">
                <img src="../assets/img/logo/BPJStk.png" style="height:60px" alt="">
                <h6 class="mt-3"><b>Preiode :</b>
                    <select name="" id="">
                        <option value="">{{ date('F-Y') }}</option>
                    </select>
                </h6>
            </header>
            <table class="table table-striped table-bordered ">
                <thead>
                    <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                        <th>No.</th>
                        <th>Nomor Referensi</th>
                        <th>Nomor Induk Kependudukan (NIK)</th>
                        <th>Nama</th>
                        <th>Tanggal Lahir</th>
                        <th>Tanggal Kepesertaan</th>
                        <th>Iuran</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $no = 1;
                    @endphp
                    @foreach ($data as $dt)
                        <td>{{ $no++ }}</td>
                        <td>{{ $dt->no_bpjs_tk }}</td>
                        <td>{{ $dt->nik }}</td>
                        <td>{{ $dt->nama }}</td>
                        <td>{{ $dt->tanggal_lahir }}</td>
                        <td>{{ $dt->tgl_kepesertaan }}</td>
                        <td>{{ $dt->iuran }}</td>
                    @endforeach
                </tbody>
            </table>
        </div>
        @include('partials.footer')
    </main>
</body>

<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).on("scroll", function() {
        if ($(document).scrollTop() > 100) {
            $(".navbar").addClass("border-bottom");
        } else {
            $(".navbar").removeClass("border-bottom");
        }
    });
    $('input').hover(function() {
        $(this).select();
    });
</script>

</html>
