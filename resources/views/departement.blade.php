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
<style>
    .box {
        width: auto;
        margin-left: 1px;
        margin-right: 1px;
        margin-top: 10px;
        height: 110px;
        background-color: #5F7A61;
        color: white;
        padding: 10px;
    }
</style>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Data Karyawan Per Department/Bagian</h3>
            </header>
            <div class="col-lg-12">
                <div class="row">
                    {{-- <div class="col-lg-2 col-md-3 col-sm-4 col-6">
                        <a href="perdepart/0" style="text-decoration:none">
                            <div class="box">
                                <div class="text-center">
                                    <i class="bi bi-person" style="font-size: 40px;"></i>
                                    <h6 class="text-white">GM</h6>
                                </div>
                            </div>
                        </a>
                    </div> --}}
                    @foreach ($departemen as $depart)
                        <div class="col-lg-2 col-md-3 col-sm-4 col-6">
                            <a href="perdepart/{{ $depart->id }}" style="text-decoration:none">
                                <div class="box">
                                    <div class="text-center">
                                        <i class="bi bi-person" style="font-size: 40px;"></i>
                                        <h6 class="text-white">{{ $depart->nama_departemen }}</h6>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                    @foreach ($bagian as $bag)
                        <div class="col-lg-2 col-md-3 col-sm-4 col-6">
                            <a href="perbagian/{{ $bag->id }}" style="text-decoration:none">
                                <div class="box">
                                    <div class="text-center">
                                        <i class="bi bi-person" style="font-size: 40px;"></i>
                                        <h6 class="text-white">{{ $bag->nama_bagian }}</h6>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

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
