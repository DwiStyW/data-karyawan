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
            <div class="mb-3">
                <table id='tabelpk' width='100%' class="table table-striped table-bordered ">
                    <caption style="caption-side: top;">
                        <div class="text-center">
                            <p><b>Tabel Pengajuan Karyawan</b></p>
                        </div>
                    </caption>
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
                            <th data-priority="3">penyetuju</th>
                            <th data-priority="3">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($pengajuanpribadi as $p)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $p['name'] }}</td>
                                <td>{{ $p['nama_jabatan'] }}</td>
                                <td>{{ $p['jumlah'] }}</td>
                                <td>{{ $p['pendidikan_terakhir'] }}</td>
                                <td>{{ $p['profesi'] }}</td>
                                <td>{{ $p['max_usia'] }}</td>
                                <td>{{ $p['jenis_kelamin'] }}</td>
                                <td>{{ $p['status'] }}</td>
                                <td>{{ $p['nama_penyetuju'] }}</td>
                                <td>
                                    <div class="d-flex justify-content-between">
                                        <a href="pengajuan/edit/{{ $p['id'] }}">
                                            <button class="btn btn-sm btn-primary">
                                                <i class="bi bi-pencil-square"></i>
                                            </button>
                                        </a>
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
            @if (count($pengajuanpersetujuan) != 0)

                <div class="mb-5">
                    <table id='tabelpp' width='100%' class="table table-striped table-bordered ">
                        <caption style="caption-side: top;">
                            <div class="text-center">
                                <p><b>Tabel Permintaan Persetujuan</b></p>
                            </div>
                        </caption>
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
                                <th data-priority="1" style="width:160px">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $no = 1;
                            @endphp
                            @foreach ($pengajuanpersetujuan as $pp)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $pp['name'] }}</td>
                                    <td>{{ $pp['nama_jabatan'] }}</td>
                                    <td>{{ $pp['jumlah'] }}</td>
                                    <td>{{ $pp['pendidikan_terakhir'] }}</td>
                                    <td>{{ $pp['profesi'] }}</td>
                                    <td>{{ $pp['max_usia'] }}</td>
                                    <td>{{ $pp['jenis_kelamin'] }}</td>
                                    <td>{{ $pp['status'] }}</td>
                                    <td>
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <button type="button" class="btn btn-success btn-sm"
                                                    data-bs-toggle="modal" data-bs-target="#setujui"
                                                    onclick="setujui({{ $pp['id'] }})">
                                                    Setujui
                                                </button>
                                            </div>
                                            <div>
                                                <button type="button" class="btn btn-danger btn-sm"
                                                    data-bs-toggle="modal" data-bs-target="#tolak"
                                                    onclick="tolak({{ $pp['id'] }})">
                                                    Tolak
                                                </button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endif
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')
    @include('pengajuan.setujui')
    @include('pengajuan.tolak')

</body>

</html>

<script src="../assets/js/jquery-1.11.3.min.js"></script>
{{-- <script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script> --}}
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tabelpk').DataTable({
            processing: true,
            deferRender: true,
            pagingType: 'simple_numbers',
            responsive: true,
            dom: '<"rowt justify-content-end"<"rowt"<f>>><t><"rowt justify-content-between"ip>',
        });
        $('#tabelpp').DataTable({
            processing: true,
            deferRender: true,
            pagingType: 'simple_numbers',
            responsive: true,
            dom: '<"rowt justify-content-end"<"rowt"<f>>><t><"rowt justify-content-between"ip>',
        });
    });
</script>
