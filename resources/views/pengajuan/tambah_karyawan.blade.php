<!-- Modal Input Master -->
<style>
    .select2 {
        width: 100% !important;
    }

    .modal-body {
        overflow-x: hidden !important;
    }
</style>
<script>
    function tambahkaryawan(idpengajuan, idjabatan, jumlah, karyawanmasuk, nama_jabatan) {
        document.getElementById('jumlah').value = jumlah;
        document.getElementById('karyawanmasuk').value = karyawanmasuk;
        document.getElementById('idpengajuan').value = idpengajuan;
        document.getElementById('idjabatan').value = idjabatan;
        document.getElementById('namajabatan').value = nama_jabatan;
        document.getElementById('indexloop').value = 1;
        document.getElementById('form2').innerHTML = '';
        var indexke = document.getElementById('indexloop').value,
            jumlah = document.getElementById('jumlah').value,
            karmasuk = document.getElementById('karyawanmasuk').value,
            max = Number(jumlah) - Number(karmasuk);

        console.log(idpengajuan, idjabatan, jumlah, karyawanmasuk, nama_jabatan, indexke, jumlah, karmasuk, max);

        $(document).ready(function() {
            $select = $('#id_jabatan' + indexke).selectize();
            selectize = $select[0].selectize;
            selectize.addOption({
                value: idjabatan,
                text: nama_jabatan
            });
            selectize.addItem(idjabatan);
        })
        if (indexke == max) {
            document.getElementById('plus').disabled = true;
            document.getElementById('minus').disabled = true;
        } else {
            document.getElementById('plus').disabled = false;
            document.getElementById('minus').disabled = true;
        }
    }

    function plus() {
        var indexke = document.getElementById('indexloop').value,
            jumlah = document.getElementById('jumlah').value,
            karmasuk = document.getElementById('karyawanmasuk').value,
            idjabatan = document.getElementById('idjabatan').value,
            namajabatan = document.getElementById('namajabatan').value,
            max = Number(jumlah) - Number(karmasuk),
            nextindex = Number(indexke) + 1,
            str = '';

        if (nextindex == max) {
            document.getElementById('plus').disabled = true;
            document.getElementById('minus').disabled = false;
        }
        $(document).ready(function() {
            $select = $('#id_jabatan' + nextindex).selectize();
            selectize = $select[0].selectize;
            selectize.addOption({
                value: idjabatan,
                text: namajabatan
            });
            selectize.addItem(idjabatan);
        })
        str += '<div class="card mb-5">';
        str += '    <div class="card-body">';
        str += '        <div class="row">';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Nama</label>';
        str += '                <input type="text" class="form-control" required name="nama' + nextindex + '"';
        str += '                    placeholder="nama">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Upload Foto</label>';
        str += '                <input type="file" class="form-control" name="image' + nextindex + '">';
        str += '            </div>';
        str += '            <div class="col-lg-12 col-12 mb-2">';
        str += '                <label for="">Alamat</label>';
        str += '<input type="text" class="form-control" required name="alamat' + nextindex + '" placeholder="alamat">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Tempat Lahir</label>';
        str += '                <input type="text" class="form-control" required name="tempat_lahir' + nextindex + '"';
        str += '                    placeholder="tempat lahir">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Tanggal Lahir</label>';
        str += '                <input type="date" class="form-control" required name="tanggal_lahir' + nextindex +
            '">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">No. KK</label>';
        str += '                <input type="number" class="form-control" required name="nokk' + nextindex + '"';
        str += '                    placeholder="No. kk">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">No. KTP</label>';
        str += '                <input type="number" class="form-control" required name="nik' + nextindex + '"';
        str += '                    placeholder="No. KTP">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">No. Telp</label>';
        str += '                <input type="number" class="form-control" name="no_hp' + nextindex + '"';
        str += '                    placeholder="No. Telp">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">No. Rekening</label>';
        str += '                <input type="number" class="form-control" name="norekening' + nextindex + '"';
        str += '                    placeholder="No. Rekening">';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Jenis Kelamin</label>';
        str += '                <select type="select" class="form-select" required name="jenis_kelamin' + nextindex +
            '">';
        str += '                    <option value disabled selected>Pilih Jenis Kelamin</option>';
        str += '                    <option value="laki-laki">Laki-laki</option>';
        str += '                    <option value="perempuan">Perempuan</option>';
        str += '                </select>';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Agama</label>';
        str += '                <select name="agama' + nextindex + '" id="agama" class="form-select" required>';
        str += '                    <option value="" selected>Pilih Agama</option>';
        str += '                    <option value="Islam">Islam</option>';
        str += '                    <option value="Protestan">Protestan</option>';
        str += '                    <option value="Katolik">Katolik</option>';
        str += '                    <option value="Hindu">Hindu</option>';
        str += '                    <option value="Buddha">Buddha</option>';
        str += '                    <option value="Khonghucu">Khonghucu</option>';
        str += '                    <option value="Lainnya">Lainnya</option>';
        str += '                </select>';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Jabatan</label>';
        str += '                <select name="id_jabatan' + nextindex + '" id="id_jabatan' + nextindex + '" required>';
        str += '                </select>';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Status</label>';
        str += '                <select name="golongan' + nextindex + '" class="form-select" required>';
        str += '                    <option value="" selected disabled>Pilih Status</option>';
        str += '                    <option value="Tetap">Tetap</option>';
        str += '                    <option value="Kontrak Trainee">Kontrak Trainee</option>';
        str += '                    <option value="HL">HL</option>';
        str += '                    <option value="HL Magang">Hl Magang</option>';
        str += '                    <option value="HL Pekerja Luar">HL Pekerja Luar</option>';
        str += '                </select>';
        str += '            </div>';
        str += '            <div class="col-lg-6 col-12 mb-2">';
        str += '                <label for="">Awal kerja</label>';
        str += '                <input type="date" class="form-control" required name="awal_kerja' + nextindex + '">';
        str += '            </div>';
        str += '        </div>';
        str += '    </div>';
        str += '</div>';
        str += '<div id="form' + nextindex + 1 + '"></div>';

        document.getElementById('form' + nextindex).innerHTML = str;
        document.getElementById('indexloop').value = nextindex;
        console.log(max, nextindex);

    }

    function minus() {
        var indexke = document.getElementById('indexloop').value,
            nextindex = Number(indexke) - 1;
        console.log(indexke)

        document.getElementById('indexloop').value = indexke - 1;
        document.getElementById('form' + indexke).innerHTML = '';

        if (nextindex == 1) {
            document.getElementById('plus').disabled = false;
            document.getElementById('minus').disabled = true;
        }
    }
</script>
<div class="modal fade" id="tambahkaryawan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Master</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body bg-light">
                <div class="container-fluid">
                    <div class="d-flex justify-content-end mb-2">
                        <button class="btn btn-primary btn-sm" onclick="plus()" id="plus">
                            <i class="bi bi-plus"></i>
                        </button>
                        <button class="btn btn-primary btn-sm ms-1" disabled onclick="minus()" id="minus">
                            <i class="bi bi-dash"></i>
                        </button>

                        <input type="hidden" name="" id="jumlah">
                        <input type="hidden" name="" id="karyawanmasuk">
                        <input type="hidden" name="" id="idjabatan">
                        <input type="hidden" name="" id="namajabatan">
                    </div>
                    <form action="/tambahkaryawanbaru" method="post" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="indexloop" id="indexloop" value="1">
                        <input type="hidden" name="idpengajuan" id="idpengajuan">
                        <div id="form1">
                            <div class="card mb-5">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Nama</label>
                                            <input type="text" class="form-control" required name="nama1"
                                                placeholder="nama">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Upload Foto</label>
                                            <input type="file" class="form-control" name="image1">
                                        </div>
                                        <div class="col-lg-12 col-12 mb-2">
                                            <label for="">Alamat</label>
                                            <input type="text" class="form-control" required name="alamat1"
                                                placeholder="alamat">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Tempat Lahir</label>
                                            <input type="text" class="form-control" required name="tempat_lahir1"
                                                placeholder="tempat lahir">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Tanggal Lahir</label>
                                            <input type="date" class="form-control" required name="tanggal_lahir1">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">No. KK</label>
                                            <input type="number" class="form-control" required name="nokk1"
                                                placeholder="No. kk">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">No. KTP</label>
                                            <input type="number" class="form-control" required name="nik1"
                                                placeholder="No. KTP">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">No. Telp</label>
                                            <input type="number" class="form-control" name="no_hp1"
                                                placeholder="No. Telp">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">No. Rekening</label>
                                            <input type="number" class="form-control" name="norekening1"
                                                placeholder="No. Rekening">
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Jenis Kelamin</label>
                                            <select type="select" class="form-select" required
                                                name="jenis_kelamin1">
                                                <option value disabled selected>Pilih Jenis Kelamin</option>
                                                <option value="laki-laki">Laki-laki</option>
                                                <option value="perempuan">Perempuan</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Agama</label>
                                            <select name="agama1" id="agama" class="form-select" required>
                                                <option value="" selected>Pilih Agama</option>
                                                <option value="Islam">Islam</option>
                                                <option value="Protestan">Protestan</option>
                                                <option value="Katolik">Katolik</option>
                                                <option value="Hindu">Hindu</option>
                                                <option value="Buddha">Buddha</option>
                                                <option value="Khonghucu">Khonghucu</option>
                                                <option value="Lainnya">Lainnya</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Jabatan</label>
                                            <select name="id_jabatan1" id="id_jabatan1" required>
                                            </select>
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Status</label>
                                            <select name="golongan1" class="form-select" required>
                                                <option value="" selected disabled>Pilih Status</option>
                                                <option value="Tetap">Tetap</option>
                                                <option value="Kontrak Trainee">Kontrak Trainee</option>
                                                <option value="HL">HL</option>
                                                <option value="HL Magang">Hl Magang</option>
                                                <option value="HL Pekerja Luar">HL Pekerja Luar</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6 col-12 mb-2">
                                            <label for="">Awal kerja</label>
                                            <input type="date" class="form-control" required name="awal_kerja1">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="form2"></div>
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
