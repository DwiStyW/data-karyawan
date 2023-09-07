<div class="offcanvas-lg offcanvas-start border-end shadow-sm h-100" style="background-color: #D5EEBB !important;"
    tabindex="-1" id="sidebar" aria-labelledby="sidebarLabel">
    <div class="offcanvas-header d-block text-center position-relative py-4">
        <div class="position-relative d-inline-block mb-1">
            <img src="{{ URL::asset('/assets/img/logo/logo.png') }}" width="140" alt=""
                style="padding: .35rem;">
        </div>
        <h6 class="offcanvas-title mb-1" id="sidebarLabel" style="color:#444941"><b>Sistem Informasi</b></h6>
        <p class="offcanvas-title mb-1" id="sidebarLabel" style="color:#444941">Data Karyawan</p>
        <button type="button" class="btn-close position-absolute top-0 end-0 m-1 d-lg-none" data-bs-dismiss="offcanvas"
            data-bs-target="#sidebar" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body d-block p-0 sidebar" style="overflow-y: auto; height: calc(100% - 150px);">
        <!-- sidebar user menu -->
        <section>
            <ul class="list-group mb-4 rounded-0">
                @if (auth()->user()->role == 'personalia')
                    <li class="list-group-item">
                        <a href="/dashboard-personalia"
                            class="btn {{ Request::is('dashboard-personalia') ? 'active' : '' }}" id="navDashboard">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-speedometer2"></i>
                            </div>
                            <div class="btn-body">
                                Dashboard
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('master') ? 'active' : '' }}" id="navDAR" href="/master">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-people"></i>
                            </div>
                            <div class="btn-body">
                                Data Master
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="nav-link btn position-relative {{ Request::is('departement') ? 'active' : '' }}{{ Request::is('bagian') ? 'active' : '' }}{{ Request::is('section') ? 'active' : '' }}{{ Request::is('filterjabatan') ? 'active' : '' }}{{ Request::is('golongan') ? 'active' : '' }}"
                            href="#">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-building"></i>
                            </div>
                            <div class="btn-body">
                                Filter
                            </div>
                            <div class="position-absolute end-0 pe-3">
                                <i class="bi small bi-caret-down-fill "></i>
                            </div>
                        </a>
                        <ul
                            class="submenu collapse {{ Request::is('departement') ? 'show' : '' }}{{ Request::is('bagian') ? 'show' : '' }}{{ Request::is('section') ? 'show' : '' }}{{ Request::is('filterjabatan') ? 'show' : '' }}{{ Request::is('golongan') ? 'show' : '' }}"style="padding-inline-start: 0px !important;">
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('departement') ? 'active' : '' }}"
                                    href="/departement" id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Departemen
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item  bg-light">
                                <a class="btn py-1 {{ Request::is('bagian') ? 'active' : '' }}" href="/bagian"
                                    id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Bagian
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('section') ? 'active' : '' }}" href="/section"
                                    id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Section
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('filterjabatan') ? 'active' : '' }}"
                                    href="/filterjabatan" id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Jabatan
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('golongan') ? 'active' : '' }}" href="/golongan"
                                    id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Status/Golongan
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="list-group-item">
                        <a class="btn {{ Request::is('bpjstk') ? 'active' : '' }}" href="/bpjstk" id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-wrench-adjustable-circle"></i>
                            </div>
                            <div class="btn-body">
                                BPJS Ketenagakerjaan
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('bpjskes') ? 'active' : '' }}" href="/bpjskes" id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-patch-plus"></i>
                            </div>
                            <div class="btn-body">
                                BPJS Kesehatan
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('riwayatkaryawan') ? 'active' : '' }}" href="/riwayatkaryawan"
                            id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-arrow-left-right"></i>
                            </div>
                            <div class="btn-body">
                                Riwayat Karyawan
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="nav-link btn position-relativess {{ Request::is('absensi') ? 'active' : '' }}{{ Request::is('rekapabsensi') ? 'active' : '' }}{{ Request::is('rekappotongan') ? 'active' : '' }}"
                            href="#">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-clock-history"></i>
                            </div>
                            <div class="btn-body">
                                Absensi Karyawan
                            </div>
                            <div class="position-absolute end-0 pe-3">
                                <i class="bi small bi-caret-down-fill "></i>
                            </div>
                        </a>
                        <ul
                            class="submenu collapse {{ Request::is('absensi') ? 'show' : '' }}{{ Request::is('rekapabsensi') ? 'show' : '' }}{{ Request::is('rekappotongan') ? 'show' : '' }}"style="padding-inline-start: 0px !important;">
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('absensi') ? 'active' : '' }}" href="/absensi"
                                    id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Absensi
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item  bg-light">
                                <a class="btn py-1 {{ Request::is('rekapabsensi') ? 'active' : '' }}"
                                    href="/rekapabsensi" id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Rekap Absensi
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('rekappotongan') ? 'active' : '' }}"
                                    href="/rekappotongan" id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Rekap Potongan
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('daftardistribusiabsen') ? 'active' : '' }}"
                                    href="/daftardistribusiabsen" id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Distribusi Absen
                                    </div>
                                </a>
                            </li>
                            {{-- <li class="list-group-item bg-light">
                                <a class="btn py-1 {{ Request::is('golongan') ? 'active' : '' }}" href="/golongan"
                                    id="navDAR">
                                    <div class="btn-header me-1">
                                        <i class="bi bi-dot"></i>
                                    </div>
                                    <div class="btn-body">
                                        Rekap Distribusi Absen
                                    </div>
                                </a>
                            </li> --}}
                        </ul>
                    </li>
                    {{-- <li class="list-group-item">
                    <a class="btn" href="/pengajuan" id="navDAR">
                        <div class="btn-header me-3 d-flex align-items-center">
                            <i class="bi bi-person-add"></i>
                        </div>
                        <div class="btn-body">
                            Pengajuan Karyawan
                        </div>
                    </a>
                </li> --}}
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('hakakses') ? 'active' : '' }}" href="/hakakses"
                            id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-universal-access-circle"></i>
                            </div>
                            <div class="btn-body">
                                Hak Akses
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item mobile">
                        <a class="btn" href="/logout" id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-box-arrow-left"></i>
                            </div>
                            <div class="btn-body">
                                Logout
                            </div>
                        </a>
                    </li>
                @elseif (auth()->user()->role == 'pimpinan')
                    <li class="list-group-item">
                        <a href="/dashboard-kabag" class="btn {{ Request::is('dashboard-kabag') ? 'active' : '' }}"
                            id="navDashboard">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-speedometer2"></i>
                            </div>
                            <div class="btn-body">
                                Dashboard
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('master-kabag') ? 'active' : '' }}" id="navDAR"
                            href="/master-kabag">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-people"></i>
                            </div>
                            <div class="btn-body">
                                Data Master
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('absensi-perdiv') ? 'active' : '' }}" href="/absensi-perdiv"
                            id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-clock-history"></i>
                            </div>
                            <div class="btn-body">
                                Absensi Karyawan
                            </div>
                            @isset($countabsen)
                                <div class="position-absolute notif">
                                    <div id="pengajuan">
                                        {{ $countabsen }}
                                    </div>
                                </div>
                            @endisset
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a class="btn {{ Request::is('pengajuan') ? 'active' : '' }}" href="/pengajuan"
                            id="navDAR">
                            <div class="btn-header me-3 d-flex align-items-center">
                                <i class="bi bi-person-add"></i>
                            </div>
                            <div class="btn-body">
                                Pengajuan Karyawan
                            </div>
                            @isset($countpengajuan)
                                <div class="position-absolute notif">
                                    <div id="pengajuan">
                                        {{ $countpengajuan }}
                                    </div>
                                </div>
                            @endisset
                        </a>
                    </li>
                @endif

            </ul>
            <!-- end of sidebar menu -->
    </div>
</div>
<style>
    .notif {
        width: 16px;
        height: 16px;
        border-radius: 50%;
        background-color: rgb(219, 0, 0);
        color: ghostwhite;
        right: 0;
        text-align: center;
        align-items: center;
        padding: 2px;
        margin-right: 10px;
        border-color: rgb(133, 0, 0);
        font-size: 11px;
    }

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
<script>
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelectorAll('.sidebar .nav-link').forEach(function(element) {

            element.addEventListener('click', function(e) {

                let nextEl = element.nextElementSibling;
                let parentEl = element.parentElement;

                if (nextEl) {
                    e.preventDefault();
                    let mycollapse = new bootstrap.Collapse(nextEl);

                    if (nextEl.classList.contains('show')) {
                        mycollapse.hide();
                    } else {
                        mycollapse.show();
                        // find other submenus with class=show
                        var opened_submenu = parentEl.parentElement.querySelector(
                            '.submenu.show');
                        // if it exists, then close all of them
                        if (opened_submenu) {
                            new bootstrap.Collapse(opened_submenu);
                        }
                    }
                }
            }); // addEventListener
        }) // forEach
    });
    // DOMContentLoaded  end
</script>
