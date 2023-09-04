<!-- NAVBAR TOP -->
<nav class="navbar navbar-expand-lg sticky-top mb-3"
    style="background-color:#5F7A61;position:fixed;top:0;z-index: 100;width:100%;min-height:50px;">


    <div class="container-fluid px-md-4">
        <div class="nonmobile" style="position: fixed;right:10px;margin-right:20px">
            <div class="navbar-brand d-flex align-items-top order-lg-2 me-lg-0">
                <div class="dropdown">
                    <div class="text-white">
                        <i class="bi bi-person-circle"></i>
                        <b>&nbsp;{{ Str::ucfirst(Auth::user()->name) }}</b>
                    </div>
                    <div class="dropdown-content">
                        <a href="/setting" class="btn">
                            <i class="bi bi-gear"></i>
                            &nbsp; setting
                        </a><br>
                        <a href="/logout" class="btn">
                            <i class="bi bi-box-arrow-left"></i>
                            &nbsp; logout
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <a class="navbar-brand d-flex align-items-top order-lg-2 me-lg-0" href="sidar-ui">
            <img src="../assets/img/logo/log.png" width="120" class="mobile" style="margin-left: -10px;">
        </a>
        <button class="navbar-toggler bg-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebar">
            <span class="navbar-toggler-icon"></span>
        </button>
        {{-- <div class="collapse navbar-collapse" id="navcol">
            <form class="me-auto" role="search">
                <div class="input-group rounded bg-white border">
                    <input class="form-control border-0" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn" type="submit">
                        <i class="bi bi-search"></i>
                    </button>
                </div>
            </form>
        </div> --}}

    </div>
</nav>
