<!-- Modal tambah bpjskes -->
<div class="modal fade" id="tambahriwayatkaryawan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Riwayat Karyawan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postriwayatkaryawan" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama Karyawan</label>
                            </div>
                            <div class="col-lg-9">
                                <select name="id_master" class="form-select" required>
                                    <option value="" selected>Pilih Nama Karyawan</option>
                                    @foreach ($master as $m)
                                        <option value="{{ $m->id }}">{{ $m->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Tanggal</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="date" class="form-control" required name="tanggal">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Jenis</label>
                            </div>
                            <div class="col-lg-9">
                                <select name="jenis" id="jenis" class="form-select" onchange="pilihjenis()"
                                    required>
                                    <option value="" selected disabled>Pilih Jenis</option>
                                    <option value="Demosi">Demosi</option>
                                    <option value="Rotasi">Rotasi</option>
                                    <option value="Promosi">Promosi</option>
                                    <option value="Kontrak">Kontrak</option>
                                    <option value="Tetap">Tetap</option>
                                    <option value="SP 1">SP 1</option>
                                    <option value="SP 2">SP 2</option>
                                    <option value="SP 3">SP 3</option>
                                </select>
                            </div>
                        </div>
                        <div id="non-sp" class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Jabatan</label>
                            </div>
                            <div class="col-lg-9">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <input type="text" class="form-control" disabled name="jabatanlama"
                                            id="namajabatan">
                                    </div>
                                    <div class="col-lg-2"><label for="" class="mt-2">menjadi</label></div>
                                    <div class="col-lg-5">
                                        <select name="id_jabatan" class="form-select" required>
                                            <option value="" selected>Pilih Jabatan</option>
                                            @foreach ($jabatan as $j)
                                                <option value="{{ $j->id }}">{{ $j->nama_jabatan }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Keterangan</label>
                            </div>
                            <div class="col-lg-9">
                                <textarea type="text" rows="3" class="form-control" name="keterangan"></textarea>
                            </div>
                        </div>
                        {{-- <input type="hidden" class="form-control" name="id_master" value="{{ $id_master }}"> --}}
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
<script>
    function tambahriwayatkaryawan(namajabatan) {
        document.getElementById('namajabatan').value = namajabatan
    }

    function pilihjenis() {
        var jabatan = @json($jabatan);
        var jabatanlama = document.getElementById('namajabatan').value;
        var str = '';
        var jenis = document.getElementById('jenis').value;
        var filterjabatan = jabatan.filter(b => b.nama_jabatan != jabatanlama);
        if (jenis == 'Demosi' || jenis == 'Rotasi' || jenis == 'Promosi') {
            str += '<div class="col-lg-3">'
            str += '<label for="">Jabatan</label>'
            str += '</div>'
            str += '<div class="col-lg-9">'
            str += '<div class="row">'
            str += '<div class="col-lg-5">'
            str += '<input type="text" class="form-control" disabled name="jabatanlama" id="namajabatan" value="' +
                jabatanlama + '">'
            str += '</div>'
            str += '<div class="col-lg-2"><label for="" class="mt-2">menjadi</label></div>'
            str += '<div class="col-lg-5">'
            str += '<select name="id_jabatan" class="form-select" required>'
            str += '<option value="" selected>Pilih Jabatan</option>'
            for (let index = 0; index < filterjabatan.length; index++) {
                // console.log(jabatanlama)
                str += '<option value="' + filterjabatan[index].id + '">' + filterjabatan[index].nama_jabatan +
                    '</option>'
            }
            str += '</select>'
            str += '</div>'
            str += '</div>'
            str += '</div>'
        } else {
            str = '<input type="hidden" class="form-control" disabled name="jabatanlama" id="namajabatan"value="' +
                jabatanlama + '">';
        }
        document.getElementById('non-sp').innerHTML = str;
    }
</script>
