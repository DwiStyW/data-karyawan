<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login | DataKaryawan</title>
    <link rel="stylesheet" href="../assets/ui/bootstrap-5.2.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/ui/bootstrap-icons-1.10.2/bootstrap-icons.css">
    {{-- <link rel="stylesheet" href="../assets/ui/css/global.css"> --}}
</head>

<style>
    @media(min-width:768px) {
        .margine {
            margin-top: 5%;
        }
    }
</style>

<body style="background-color:#D5EEBB">
    <section class="vh-100 gradient-custom margine">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card text-white" style="border-radius: 1rem;background-color:#5F7A61;">
                        <div class="card-body p-3">
                            <img style="position:absolute;width:90%;margin-top:-35%"
                                src="../assets/img/logo/karyawan.png" alt="">
                            <div class="mb-md-5 mt-md-4 pb-1">
                                <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                <p class="text-white-50 mb-4">Please enter your username and password!</p>
                                <form action="auth" method="post">
                                    @csrf
                                    <div class="form-outline form-white mb-3">
                                        <label class="form-label" for="name">Username</label>
                                        <input type="text" id="name" name="name"
                                            class="form-control form-control-lg" />
                                    </div>
                                    <div class="form-outline form-white mb-3">
                                        <label class="form-label" for="password">Password</label>
                                        <input type="password" id="password" name="password"
                                            class="form-control form-control-lg" />
                                    </div>
                                    <div class="text-center">
                                        <button class="btn btn-outline-light btn-lg" type="submit">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
