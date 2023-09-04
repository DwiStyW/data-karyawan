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
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Data Pengajuan Karyawan</h3>
            </header>
            @include('alert')
            <div class="pb-3">
                <a href="pengajuan/add">
                    <button class="btn btn-sm btn-secondary">
                        <i class="bi bi-plus-square-fill"></i>
                        Pengajuan
                    </button>
                </a>
            </div>
            <div>
                <table id='mTable' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Pengaju</th>
                            <th data-priority="3">Jabatan Yang Dibutuhkan</th>
                            <th data-priority="3">Jumlah</th>
                            <th data-priority="3">Pendidikan Terakhir</th>
                            <th data-priority="3">Profesi</th>
                            <th data-priority="3">Maksimal Usia</th>
                            <th data-priority="3">Jenis Kelamin</th>
                            <th data-priority="3">Status</th>
                            <th data-priority="3">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($pengajuan as $p)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $p->name }}</td>
                                <td>{{ $p->nama_jabatan }}</td>
                                <td>{{ $p->jumlah }}</td>
                                <td>{{ $p->pendidikan_akhir }}</td>
                                <td>{{ $p->profesi }}</td>
                                <td>{{ $p->max_usia }}</td>
                                <td>{{ $p->jenis_kelamin }}</td>
                                <td>{{ $p->status }}</td>
                                <td>
                                    <div class="d-flex justify-content-center">
                                        <button class="btn btn-sm btn-primary">
                                            <i class="bi bi-pencil-square"></i>
                                        </button>
                                        <button class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash3-fill"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>

</html>
