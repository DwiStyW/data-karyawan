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
    <script src="../assets/js/code/highcharts.js"></script>
    <script src="../assets/js/code/modules/drilldown.js"></script>
    <script src="../assets/js/code/modules/stock.js"></script>
    <script src="../assets/js/code/modules/exporting.js"></script>
    <script src="../assets/js/code/modules/export-data.js"></script>
    <script src="../assets/js/code/modules/accessibility.js"></script>
</head>
<style>
    .multipleSelection {
        width: 300px;
        background-color: #BCC2C1;
    }

    .selectBox {
        position: relative;
    }

    .selectBox select {
        width: 100%;
    }

    .overSelect {
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
    }

    .checkBoxes {
        display: none;
        padding: 5px;
        max-height: 200px;
        overflow: scroll;
        overflow-x: hidden;
        background-color: white;
    }

    .checkBoxes label {
        display: block;
    }

    .checkBoxes label:hover {
        background-color: #4F615E;
    }
</style>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Tambah Hak Akses User</h3>
            </header>
            <form action="/posthakakses" method="post">
                @csrf
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-4">
                            <div class="col-lg-2">
                                <label class="float-start fw-bold">Pilih User</label>
                            </div>
                            <div class="col-lg-10">
                                <select name="user" id="master" class="form-select" required>
                                    <option value="" disabled selected>Pilih User</option>
                                    @foreach ($user as $m)
                                        <option value="{{ $m->id }}">{{ $m->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            @foreach ($data as $d)
                                <div class="col-lg-4 col-md-6 col-12 mb-3">
                                    <div class="card bg-light bordered-0 p-2 m-1">
                                        <label>
                                            <input type="checkbox" id="departemen{{ $d['id_departemen'] }}"
                                                onclick="selectall({{ $d['id_departemen'] }})">
                                            &nbsp;{{ $d['nama_departemen'] }}
                                        </label>
                                        <div class="selectBox" onclick="showCheckboxes('{{ $d['id_departemen'] }}')">
                                            <select>
                                                <option>Pilih Jabatan</option>
                                            </select>
                                            <div class="overSelect"></div>
                                        </div>
                                        <div id="{{ $d['id_departemen'] }}" class="checkBoxes">
                                            @foreach ($d['jabatan'] as $j)
                                                <label>
                                                    <input type="checkbox" name="jabatan[]"
                                                        id="{{ $d['nama_departemen'] }}" value="{{ $j->id }}" />
                                                    {{ $j->nama_jabatan }}
                                                </label>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="float-end">
                            <button class="btn btn-primary btn-sm" type="submit">submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')


</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<!-- Script -->
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

    var show = true;

    function showCheckboxes(departemen) {
        var depart = departemen;
        // console.log(depart);
        var checkboxes = document.getElementById(depart);

        if (show) {
            checkboxes.style.display = "block";
            show = false;
        } else {
            checkboxes.style.display = "none";
            show = true;
        }
    }

    function selectall(id) {
        var id_departemen = id,
            departemen = @json($departemen),
            filterdepartemen = departemen.filter(a => a.id == id_departemen),
            nama_departemen = filterdepartemen[0].nama_departemen;

        var checked = document.getElementsByTagName('input');

        var checkboxes = document.getElementById(id_departemen);
        if (document.getElementById('departemen' + id_departemen).checked) {
            checkboxes.style.display = "block";
            for (var i = 0; i < checked.length; i++) {
                if (checked[i].type == 'checkbox' && checked[i].id == nama_departemen) {
                    checked[i].checked = true;
                }
            }
            show = false;
        } else {
            checkboxes.style.display = "none";
            for (var i = 0; i < checked.length; i++) {
                if (checked[i].type == 'checkbox' && checked[i].id == nama_departemen) {
                    checked[i].checked = false;
                }
            }
            show = true;
        }
    }
</script>

</html>
