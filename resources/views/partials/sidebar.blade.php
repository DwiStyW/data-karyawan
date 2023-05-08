<div class="offcanvas-lg offcanvas-start border-end shadow-sm h-100" style="background-color: #D5EEBB !important;"
    tabindex="-1" id="sidebar" aria-labelledby="sidebarLabel">
    <div class="offcanvas-header d-block text-center position-relative py-4">
        <div class="position-relative d-inline-block mb-1">
            <img src="../assets/img/logo/logo.png" width="140" alt="" style="padding: .35rem;">
        </div>
        <h6 class="offcanvas-title mb-1" id="sidebarLabel" style="color:#444941"><b>Sistem Informasi</b></h6>
        <p class="offcanvas-title mb-1" id="sidebarLabel" style="color:#444941">Data Karyawan</p>
        <button type="button" class="btn-close position-absolute top-0 end-0 m-1 d-lg-none" data-bs-dismiss="offcanvas"
            data-bs-target="#sidebar" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body d-block p-0" style="overflow-y: auto; height: calc(100% - 192px);">
        <!-- sidebar user menu -->
        <section>
            <ul class="list-group mb-4 rounded-0">
                <li class="list-group-item">
                    <a href="/dashboard" class="btn" id="navDashboard">
                        <div class="btn-header me-3">
                            <i class="bi bi-speedometer2"></i>
                        </div>
                        <div class="btn-body">
                            Dashboard
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" id="navDAR" href="/master">
                        <div class="btn-header me-3">
                            <i class="bi bi-people"></i>
                        </div>
                        <div class="btn-body">
                            Data Master
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" href="/departement" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-building"></i>
                        </div>
                        <div class="btn-body">
                            Departemen/Bagian
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" href="/golongan" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-diagram-3"></i>
                        </div>
                        <div class="btn-body">
                            Status/Golongan
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" href="/bpjstk" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-wrench-adjustable-circle"></i>
                        </div>
                        <div class="btn-body">
                            BPJS Ketenagakerjaan
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" href="/bpjskes" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-patch-plus"></i>
                        </div>
                        <div class="btn-body">
                            BPJS Kesehatan
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" href="/riwayatkaryawan" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-arrow-left-right"></i>
                        </div>
                        <div class="btn-body">
                            Riwayat Karyawan
                        </div>
                    </a>
                </li>
                <li class="list-group-item">
                    <a class="btn" href="/absensi" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-clock-history"></i>
                        </div>
                        <div class="btn-body">
                            Absensi Karyawan
                        </div>
                    </a>
                </li>
                <li class="list-group-item mobile">
                    <a class="btn" href="/logout" id="navDAR">
                        <div class="btn-header me-3">
                            <i class="bi bi-box-arrow-left"></i>
                        </div>
                        <div class="btn-body">
                            Logout
                        </div>
                    </a>
                </li>
            </ul>
            <!-- end of sidebar menu -->
    </div>
</div>
<style>
    #sidebar {
        max-width: 320px;
    }

    #sidebar .list-group-item {
        padding: 0;
        border-left-width: 0 !important;
        border-right-width: 0 !important;
        background-color: #D5EEBB;
    }

    #sidebar .list-group-item .btn {
        display: flex;
        flex-wrap: nowrap;
        text-align: left;
        line-height: normal;
        border-radius: 0;
        width: 100%;
        padding: .5rem 1rem .5rem 1.5rem;
        text-transform: capitalize;
    }

    #sidebar .collapse-item .list-group-item .btn {
        padding-left: 3rem;
    }

    #sidebar .list-group-item .btn:hover,
    #sidebar .list-group-item .btn.active {
        background-color: #444941;
        color: #D5EEBB;
    }

    @media (min-width: 992px) {
        #sidebar {
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            width: 100%;
            max-width: 190px;
            background-color: #444941;
        }
    }

    #sidebar .small {
        font-size: .75em;
    }

    .collapse-item {
        overflow-x: hidden;
    }

    .collapse-item>.btn {
        position: relative;
    }

    .collapse-item>.btn::after {
        content: url(ui/bootstrap-icons-1.10.2/chevron-up.svg);
        width: 20px;
        height: 20px;
        position: absolute;
        top: 50%;
        left: calc(100% - 15px);
        transform: translate(-50%, -50%) rotate(0deg);
        transition: all .36s;
    }

    .collapse-item>.btn.collapsed::after {
        transform: translate(-50%, -50%) rotate(180deg);
    }

    .collapse-item>.btn:hover::after,
    .collapse-item>.btn.active::after {
        filter: invert(1);
    }
</style>
