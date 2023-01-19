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
        @include('partials.footer')
    </main>
    @include('partials.navdown')
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
</body>

</html>
