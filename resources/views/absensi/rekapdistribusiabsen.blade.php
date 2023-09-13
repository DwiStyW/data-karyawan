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
    <link rel="stylesheet" href="../assets/js/select2-master/dist/css/select2.min.css" />
    <script src="../assets/js/jquery-1.11.3.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Pilih tanggal absen Karyawan</h3>
            </header>
            <div class="card p-3">
                <div class="row mt-3">
                    <div class="col-lg-3">
                        <label class="float-end fw-bold">Range Tanggal</label>
                    </div>
                    <div class="col-lg-9">
                        <div class="input-daterange input-group">
                            <input type="date" class="form-control" id="start" required />
                            <span class="card p-1 pe-2 ps-2">to</span>
                            <input type="date" class="form-control" id="end" required />
                        </div>
                    </div>
                </div>

                <div class="mt-3">
                    <div class="float-end">
                        <div class="d-flex">
                            <button class="btn btn-sm btn-primary m-1" onclick="carirekap()">cari</button>
                        </div>
                    </div>
                </div>
            </div>
            @include('alert')
            <div id="tabeldistribusi"></div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<div class="modal fade" id="viewabsen" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <div class="d-flex">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Data Absensi </h1>
                    <h1 class="modal-title fs-5 ms-2" id="tglabsen"></h1>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                    onclick="destroyabsensi()"></button>
            </div>
            <div class="modal-body">
                <div id="tabelabsensi"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
                    onclick="destroyabsensi()">Kembali</button>
            </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="viewaprovel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <div class="d-flex">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Data Aprovel </h1>
                    <h1 class="modal-title fs-5 ms-2" id="tglaprovel"></h1>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                    onclick="destroyaprovel()"></button>
            </div>
            <div class="modal-body">
                <div id="tabelaprovel"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
                    onclick="destroyaprovel()">Kembali</button>
            </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mockjax/1.6.2/jquery.mockjax.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>
<script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v2.0.0/dataTables.rowsGroup.js"></script>
<script src="../assets/js/select2-master/dist/js/select2.min.js"></script>

<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function carirekap() {
        var start = document.getElementById('start').value;
        var end = document.getElementById('end').value;
        $.ajax({
            type: 'POST',
            url: "{{ route('rekapdistribusiabsen.post') }}",
            data: {
                start: start,
                end: end,
            },
            success: function(data) {
                console.log(data);
                const groupBy = (keys) => (array) =>
                    array.reduce((objectsByKeyValue, obj) => {
                        const value = keys.map((key) => obj[key]).join("-");
                        objectsByKeyValue[value] = (objectsByKeyValue[value] || []).concat(obj);
                        return objectsByKeyValue;
                    }, {});

                const groupBytgl = groupBy(['tanggal']);
                let datagroup = [];
                for (let [tanggal, values] of Object.entries(groupBytgl(data))) {
                    datagroup.push({
                        'tanggal': tanggal,
                        'statusdistribusi': values[0].statusdistribusi,
                    })
                }
                console.log(datagroup);
                var no = 1;
                str = '';
                str += '<table id="table" width="100%" class="table table-bordered ">';
                str += '    <thead>';
                str += '        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
                str += '            <th data-priority="1">No</th>';
                str += '            <th data-priority="1">Tanggal Absensi</th>';
                str += '            <th data-priority="3">Status Distribusi</th>';
                str += '            <th data-priority="3" class="text-center">Aksi</th>';
                str += '        </tr>';
                str += '    </thead>';
                str += '    <tbody>';
                for (let i = 0; i < datagroup.length; i++) {
                    var tanggal = "'" + datagroup[i].tanggal + "'";
                    // console.log(tanggal);
                    str += '        <tr>';
                    str += '            <td>' + no++ + '</td>';
                    str += '            <td>' + datagroup[i].tanggal + '</td>';
                    if (datagroup[i].statusdistribusi == "Done") {
                        str += '        <td class="text-success">' + datagroup[i].statusdistribusi +
                            '</td>';
                    } else {
                        str += '        <td class="text-warning">' + datagroup[i].statusdistribusi +
                            '</td>';
                    }
                    str += '           <td><div class="d-flex justify-content-around">' +
                        '<button class="btn btn-sm btn-info" data-bs-toggle="modal" data-bs-target="#viewabsen" onclick="getdataabsen(' +
                        tanggal + ')">' +
                        '<i class="bi bi-eye"></i>' +
                        ' View Absensi' +
                        '</button>' +
                        '<button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#viewaprovel" onclick="getdataaprovel(' +
                        tanggal + ')">' +
                        '<i class="bi bi-eye"></i>' +
                        ' View Aprovel' +
                        '</button>' +
                        '</div></td>';
                    str += '        </tr>';
                }
                str += '    </tbody>';
                str += '</table>';
                $(document).ready(function() {
                    $('#table').DataTable({
                        responsive: true,
                        info: false,
                        paging: false,
                        searching: false
                    });
                })
                document.getElementById('tabeldistribusi').innerHTML = str;
            }
        });
    }

    function getdataabsen(tgl) {
        document.getElementById('tglabsen').innerHTML = tgl;
        $.ajax({
            type: 'POST',
            url: "{{ route('absensi.post') }}",
            data: {
                tanggal: tgl
            },
            success: function(data) {
                console.log(data);
                var no = 1;
                str = '';
                str += '<table id="absensitable" width="100%" class="table table-bordered ">';
                str += '    <thead>';
                str += '        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
                str += '            <th data-priority="1">No</th>';
                str += '            <th data-priority="1">Nama</th>';
                str += '            <th data-priority="3">Jenis</th>';
                str += '            <th data-priority="3">Surat</th>';
                str += '            <th data-priority="3">Keterangan</th>';
                str += '        </tr>';
                str += '    </thead>';
                str += '    <tbody>';
                for (let i = 0; i < data.length; i++) {
                    str += '        <tr>';
                    str += '            <td>' + no++ + '</td>';
                    str += '            <td>' + data[i].nama + '</td>';
                    str += '            <td>' + data[i].jenis + '</td>';

                    str += '            <td>' + data[i].surat + ' ';
                    if (data[i].surat == "ada") {
                        str += '<a href="/assets/img/surat-izin/' + data[i].filesurat +
                            '" target="_blank"><i class="bi bi-image"></i></a>';
                    }
                    str += '</td>';
                    str += '            <td>' + data[i].ket + '</td>';
                    str += '        </tr>';
                }
                str += '    </tbody>';
                str += '</table>';

                $(document).ready(function() {
                    $('#absensitable').DataTable({
                        processing: true,
                        responsive: true,
                        info: false,
                        paging: false,
                        searching: false
                    });
                })
                document.getElementById('tabelabsensi').innerHTML = str;
            }
        });
        console.log(tgl);
    }

    function getdataaprovel(tgl) {
        document.getElementById('tglaprovel').innerHTML = tgl;
        $.ajax({
            type: 'POST',
            url: "{{ route('daftardistribusiabsen.post') }}",
            data: {
                tanggal: tgl,
            },
            success: function(data) {
                console.log(data)
                var no = 1;
                str = '';
                str += '<table id="aproveltable" width="100%" class="table table-bordered ">';
                str += '    <thead>';
                str += '        <tr style="background-color:#5F7A61;color:#ddd;font-weight:bold">';
                str += '            <th data-priority="1">No</th>';
                str += '            <th data-priority="1">Penerima Absen</th>';
                str += '            <th data-priority="3">Status</th>';
                str += '        </tr>';
                str += '    </thead>';
                str += '    <tbody>';
                for (let i = 0; i < data.length; i++) {
                    str += '        <tr>';
                    str += '            <td>' + no++ + '</td>';
                    str += '            <td>' + data[i].nama + '</td>';
                    if (data[i].status == "Sudah Mengetahui") {
                        str += '        <td class="text-success">' + data[i].status + '</td>';
                    } else {
                        str += '        <td class="text-warning">' + data[i].status + '</td>';
                    }
                    str += '        </tr>';
                }
                str += '    </tbody>';
                str += '</table>';

                $(document).ready(function() {
                    $('#aproveltable').DataTable({
                        processing: true,
                        responsive: true,
                        info: false,
                        paging: false,
                        searching: false
                    });
                })
                document.getElementById('tabelaprovel').innerHTML = str;
            }
        });
        console.log(tgl);
    }

    function destroyaprovel() {
        $('#aproveltable').dataTable().fnClearTable();
        $('#aproveltable').dataTable().fnDestroy();
    }

    function destroyabsensi() {
        $('#absensitable').dataTable().fnClearTable();
        $('#absensitable').dataTable().fnDestroy();
    }
</script>

</html>
