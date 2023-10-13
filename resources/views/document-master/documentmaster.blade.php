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
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.1/css/selectize.bootstrap3.min.css" />

</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                @foreach ($master as $m)
                @endforeach
                <h3 class="title-pages fw-bold">Document {{ $m->nama }}</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <button data-bs-toggle="modal" data-bs-target="#tambahdokumen" class="btn btn-sm btn-secondary">
                    <i class="bi bi-plus-square-fill"></i>
                    Dokumen
                </button>
            </div>
            <div class="mb-3">
                @if (count($data) != 0)
                    <div class="row">
                        @foreach ($data as $d)
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="card">
                                    @if ($d['extension'] == 'pdf')
                                        <a style="height:150px" href="../assets/upload/document/{{ $d['file'] }}"
                                            class="d-flex align-items-center justify-content-center">
                                            <svg xmlns="http://www.w3.org/2000/svg" height="90px" fill="maroon"
                                                class="bi bi-file-pdf" viewBox="0 0 16 16">
                                                <path
                                                    d="M4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4zm0 1h8a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1z" />
                                                <path
                                                    d="M4.603 12.087a.81.81 0 0 1-.438-.42c-.195-.388-.13-.776.08-1.102.198-.307.526-.568.897-.787a7.68 7.68 0 0 1 1.482-.645 19.701 19.701 0 0 0 1.062-2.227 7.269 7.269 0 0 1-.43-1.295c-.086-.4-.119-.796-.046-1.136.075-.354.274-.672.65-.823.192-.077.4-.12.602-.077a.7.7 0 0 1 .477.365c.088.164.12.356.127.538.007.187-.012.395-.047.614-.084.51-.27 1.134-.52 1.794a10.954 10.954 0 0 0 .98 1.686 5.753 5.753 0 0 1 1.334.05c.364.065.734.195.96.465.12.144.193.32.2.518.007.192-.047.382-.138.563a1.04 1.04 0 0 1-.354.416.856.856 0 0 1-.51.138c-.331-.014-.654-.196-.933-.417a5.716 5.716 0 0 1-.911-.95 11.642 11.642 0 0 0-1.997.406 11.311 11.311 0 0 1-1.021 1.51c-.29.35-.608.655-.926.787a.793.793 0 0 1-.58.029zm1.379-1.901c-.166.076-.32.156-.459.238-.328.194-.541.383-.647.547-.094.145-.096.25-.04.361.01.022.02.036.026.044a.27.27 0 0 0 .035-.012c.137-.056.355-.235.635-.572a8.18 8.18 0 0 0 .45-.606zm1.64-1.33a12.647 12.647 0 0 1 1.01-.193 11.666 11.666 0 0 1-.51-.858 20.741 20.741 0 0 1-.5 1.05zm2.446.45c.15.162.296.3.435.41.24.19.407.253.498.256a.107.107 0 0 0 .07-.015.307.307 0 0 0 .094-.125.436.436 0 0 0 .059-.2.095.095 0 0 0-.026-.063c-.052-.062-.2-.152-.518-.209a3.881 3.881 0 0 0-.612-.053zM8.078 5.8a6.7 6.7 0 0 0 .2-.828c.031-.188.043-.343.038-.465a.613.613 0 0 0-.032-.198.517.517 0 0 0-.145.04c-.087.035-.158.106-.196.283-.04.192-.03.469.046.822.024.111.054.227.09.346z" />
                                            </svg>
                                        </a>
                                    @else
                                        <div data-bs-toggle="modal" data-bs-target="#tampildokumen"
                                            onclick="foto({{ $d['id'] }},'{{ $d['keterangan'] }}','{{ $d['file'] }}')"
                                            class="d-flex align-items-center justify-content-center">
                                            <img style="object-fit: cover;"
                                                src="../assets/upload/document/{{ $d['file'] }}" height="150px">
                                        </div>
                                    @endif
                                </div>
                                <div class="text-center">
                                    <h6>{{ $d['keterangan'] }}</h6>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @else
                    <table class="w-100" style="height:50vh">
                        <tr>
                            <td class="align-middle text-center  opacity-50">
                                <h3>Dokumen tidak tersedia</h3>
                            </td>
                        </tr>
                    </table>
                @endif
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')
    @include('pengajuan.tambah_karyawan')

</body>

</html>
<!-- Modal tambah bpjskes -->
<div class="modal fade" id="tambahdokumen" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Dokumen {{ $m->nama }}</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/tambahdocument" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Keterangan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control"
                                    placeholder="Keterangan dokumen CV / KTP dll." required name="keterangan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Dokumen</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="file" class="form-control" required name="file">
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="id_master" name="id_master"
                            value="{{ $id }}">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="tampildokumen" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="namadokumen" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="namadokumen"></h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="d-flex justify-content-end mb-3">
                        <form action="/hapusdokumen" enctype="multipart/form-data" method="post">
                            @csrf
                            <input type="hidden" class="form-control" id="iddoc" name="iddoc">
                            <button class="btn btn-danger btn-sm" type="submit">
                                <i class="bi bi-trash3-fill"></i>
                            </button>
                        </form>
                    </div>
                    <div class="w-100">
                        <div class="d-flex align-items-center justify-content-center">
                            <img id="img" src="" class="height-lg-350 height-md-200 height-100"
                                style="object-fit: cover !important;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Kembali</button>
            </div>

        </div>
    </div>
</div>

<script src="../assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.1/js/standalone/selectize.min.js"></script>

<script>
    function foto(id, keterangan, nama) {
        // console.log(id, keterangan, nama)
        document.getElementById('namadokumen').innerHTML = 'Dokumen ' + keterangan;
        document.getElementById('iddoc').value = id;
        document.getElementById('img').src = '../assets/upload/document/' + nama;
    }
</script>
<style>
    @media (min-width: 1200px) {
        .height-lg-350 {
            height: 350px !important;
        }
    }

    @media (min-width: 992px) {
        .height-lg-350 {
            height: 350px !important;
        }
    }

    @media (min-width: 768px) {
        .height-md-200 {
            height: 200px !important
        }
    }

    @media (max-width: 576px) {
        .height-100 {
            height: 100px !important;
        }
    }
</style>
