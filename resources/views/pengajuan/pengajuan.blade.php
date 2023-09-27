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
                <h3 class="title-pages fw-bold">Data Pengajuan Karyawan</h3>
            </header>
            @include('alert')
            <div class="mb-3">
                <table id='tabelpk' width='100%' class="table table-striped table-bordered ">
                    <thead>
                        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">
                            <th data-priority="1">No</th>
                            <th data-priority="1">Pengaju</th>
                            <th data-priority="3">Jabatan Yang Dibutuhkan</th>
                            <th data-priority="3">Jumlah</th>
                            <th data-priority="3">Karyawan Masuk</th>
                            <th data-priority="3">Pendidikan Terakhir</th>
                            <th data-priority="3">Profesi</th>
                            <th data-priority="3">Maksimal Usia</th>
                            <th data-priority="3">Jenis Kelamin</th>
                            <th data-priority="2">Status</th>
                            <th data-priority="2">penyetuju</th>
                            <th data-priority="1">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($datapengajuan as $p)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $p['name'] }}</td>
                                <td>{{ $p['nama_jabatan'] }}</td>
                                <td>{{ $p['jumlah'] }}</td>
                                <td>{{ $p['karyawan_masuk'] }}</td>
                                <td>{{ $p['pendidikan_terakhir'] }}</td>
                                <td>{{ $p['profesi'] }}</td>
                                <td>{{ $p['max_usia'] }}</td>
                                <td>{{ $p['jenis_kelamin'] }}</td>
                                <td>{{ $p['status'] }}</td>
                                <td>{{ $p['nama_penyetuju'] }}</td>
                                <td>
                                    @if ($p['jumlah'] != $p['karyawan_masuk'])
                                        <button class="btn btn-primary" data-bs-toggle="modal"
                                            data-bs-target="#tambahkaryawan"
                                            onclick="tambahkaryawan({{ $p['id'] }},{{ $p['id_jabatan'] }},{{ $p['jumlah'] }},{{ $p['karyawan_masuk'] }},'{{ $p['nama_jabatan'] }}')">
                                            <i class="bi bi-person-add"></i>
                                        </button>
                                    @endif
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
    @include('pengajuan.tambah_karyawan')

</body>

</html>

<script src="../assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.1/js/standalone/selectize.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tabelpk').DataTable({
            processing: true,
            deferRender: true,
            pagingType: 'simple_numbers',
            responsive: true,
            dom: '<"rowt justify-content-end"<"rowt"<f>>><t><"rowt justify-content-between"ip>',
        });
    });
</script>
