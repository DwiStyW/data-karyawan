<!-- Modal edit pendidikan -->
<div class="modal fade" id="editpendidikan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="sesuaitingkat">Edit Pendidikan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/updatependidikan" enctype="multipart/form-data" method="post">
                        @csrf
                        <input type="hidden" id="id_pendidikan" name="id_pendidikan">
                        <input type="hidden" id="tingkat_pendidikan" name="tingkat_pendidikan">
                        <input type="hidden" id="jurusan" name="jurusan">
                        <div class="card bordered mb-4 pt-3"style="padding-left:20px;padding-right:20px">
                            <div class="row">
                                <div class="col-lg-2">
                                    <label for="">Nama Sekolah</label>
                                </div>
                                <div class="col-lg-10 mb-3">
                                    <input type="text" class="form-control" placeholder="nama sekolah"
                                        id="nama_sekolah" name="nama_sekolah" value="">
                                </div>
                            </div>
                            <div id="formjurusan"></div>
                            {{-- <div class="row">
                                <div class="col-lg-2">
                                    <label for="">Jurusan</label>
                                </div>
                                <div class="col-lg-10 mb-3">
                                    <input type="text" class="form-control" placeholder="nama jurusan"
                                        id="jurusan" name="jurusan">
                                </div>
                            </div> --}}

                            <div class="row">
                                <div class="col-lg-2">
                                    <label for="">Masuk</label>
                                </div>
                                <div class="col-lg-4 mb-3">
                                    <input type="number" class="form-control" id="tglawal" name="tglawal">
                                </div>
                                <div class="col-lg-2">
                                    <label for="">Keluar</label>
                                </div>
                                <div class="col-lg-4 mb-3">
                                    <input type="number" class="form-control" id="tglakhir" name="tglakhir">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    <label for="">Ijasah</label>
                                </div>
                                <div class="col-lg-10 mb-3">
                                    <input type="file" class="form-control" id="sertifikat" name="sertifikat">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" class="form-control" id="master" name="id_master"
                            value="{{ $id_master }}">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>

<script>
    function editpendidikan(id, tingkat, namasekolah, jurusan, tglawal, tglakhir) {
        console.log(id, tingkat, namasekolah, jurusan, tglawal, tglakhir)
        document.getElementById('id_pendidikan').value = id;
        document.getElementById('tingkat_pendidikan').value = tingkat;
        document.getElementById('nama_sekolah').value = namasekolah;
        document.getElementById('tglawal').value = tglawal;
        document.getElementById('tglakhir').value = tglakhir;
        if (jurusan != '-') {
            htmljurusan = '<div class="row">' +
                '<div class="col-lg-2">' +
                '<label for="">Jurusan</label>' +
                '</div>' +
                '<div class="col-lg-10 mb-3">' +
                '<input type="text" class="form-control" placeholder="nama jurusan" id="jurusan" name="jurusan" value="' +
                jurusan + '">' +
                '</div>' +
                '</div>';
        } else {
            htmljurusan = '';
            document.getElementById('jurusan').value = jurusan;
        }
        document.getElementById('formjurusan').innerHTML = htmljurusan;

        sesuaitingkat = 'Edit Pendidikan ' + tingkat;
        document.getElementById('sesuaitingkat').innerHTML = sesuaitingkat;
    }
</script>
