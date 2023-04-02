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
    <style>
        #tree {
            width: 100%;
            height: 100%;
        }

        .field_0 {
            font-family: cursive;
            text-transform: uppercase;
            fill: #ddd;
        }

        .field_1 {
            fill: #cfcfcf;
        }

        /*
        #tree>svg {
            background-color: #ddd;
        } */
        [data-id='search'] {
            display: block !important;
        }
    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                @include('alert')
                <h3 class="title-pages fw-bold"><i class="bi bi-gear"></i> Setting</h3>
            </header>
            <div class="container-fluid">
                <form action="/edituser" method="post">
                    @csrf
                    <label for="name">Username</label>
                    <input type="hidden" name="id" value="{{ auth()->user()->id }}">
                    <input type="name" id="name" name="name" value="{{ auth()->user()->name }}" class="form-control" placeholder="Username">
                    <label for="Password" class="mt-3">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password">
                    <button class="btn btn-primary mt-3" type="submit">Submit</button>
                </form>
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
