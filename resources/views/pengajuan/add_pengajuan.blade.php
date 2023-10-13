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
                <h3 class="title-pages fw-semibold">Form Pengajuan Karyawan</h3>
            </header>
            <div class="p-3">
                <form action="/pengajuan/post" method="POST">
                    @csrf
                    <input class="form-control" type="hidden" name="idpengaju" id="idpengaju" readonly
                        value="{{ Auth()->user()->id }}">
                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Pengaju</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <input class="form-control" type="text" readonly
                                value="{{ Str::ucfirst(Auth::user()->name) }}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Jabatan Yang Dibutuhkan</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <select name="jabatan" id="jabatan">
                                <option value="" selected disabled>Pilih Jabatan</option>
                                @foreach ($jabatan as $j)
                                    <option value="{{ $j->id }}">{{ $j->nama_jabatan }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Jumlah</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <input class="form-control" type="number" name="jumlah" id="jumlah" placeholder="0">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Pendidikan Terakhir</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <select name="pendidikan" id="pendidikan">
                                <option value="" selected>Pilih Tinkat Pendidikan</option>
                                @foreach ($pendidikan as $p)
                                    <option value="{{ $p->tingkatan_pendidikan }}">{{ $p->tingkatan_pendidikan }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Profesi</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <select name="profesi" id="profesi">
                                <option value="" selected disabled>Pilih Profesi</option>
                                <option value="Apoteker">Apoteker</option>
                                <option value="Guru">Guru</option>
                                <option value="Insinyur">Insinyur</option>
                                <option value="Akuntan">Akuntan</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Maksimal Usia</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <input class="form-control" type="number" name="max_usia" id="max_usia" placeholder="0">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3 col-4">
                            <label for="" class="fw-semibold">Jenis Kelamin</label>
                        </div>
                        <div class="col-md-9 col-8">
                            <select name="jenis_kelamin" id="jenis_kelamin">
                                <option value="L/P" selected>L/P</option>
                                <option value="L">L</option>
                                <option value="P">P</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="btn btn-primary">submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.1/js/standalone/selectize.min.js"></script>
<script>
    $(document).ready(function() {
        $('#jabatan').selectize({
            create: true
        });
        $('#pendidikan').selectize();
        $('#jenis_kelamin').selectize();
        $('#profesi').selectize({
            create: true,
            sortField: {
                field: 'text',
                direction: 'asc'
            }
        });
    });
</script>

</html>
