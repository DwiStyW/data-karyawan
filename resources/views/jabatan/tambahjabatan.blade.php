<!-- Modal Input Jabatan -->
<div class="modal fade" id="tambah_Jabatan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Jabatan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/postJabatan" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama Jabatan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" required name="nama_jabatan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Departemen</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="departemen">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Bagian</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="bagian">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Sie</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="sie">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Level</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="level" id="level" onchange="selectpid()">
                                    <option value="" disabled selected>Pilih Level</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Atasan</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="pid" id="pid">
                                    <option value="" disabled selected>Pilih Atasan</option>
                                    @foreach ($jabatan as $j)
                                        <option value="{{ $j->id }}">{{ $j->nama_jabatan }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
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
    console.log(@json($jabatan))
    var pid = @json($jabatan);
    var filtered = pid.filter(p => p.level < 5)
    console.log(filtered)

    function selectpid() {
        var level = document.getElementById('level').value;
        console.log(level);
        var filtered = pid.filter(p => p.level < level);
        str = "<select class='form-select' name='pid' id='pid'>";
        str += "<option value='' disabled selected>Pilih Atasan</option>";

        for (let index = 0; index < filtered.length; index++) {
            //const element = array[index];
            console.log(filtered[index].nama_jabatan);
            str += "<option value=" + filtered[index].id + ">" + filtered[index].nama_jabatan + "</option>";
        }
        str += "</select>";
        console.log(str);
        document.getElementById('pid').innerHTML = str;

    }
</script>
