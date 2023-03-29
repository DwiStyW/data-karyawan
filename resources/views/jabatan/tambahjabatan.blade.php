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
                                <select class="form-select" name="departemen" id="departemenn"
                                    onchange="selectdepartemen()">
                                    <option value="0" selected>Pilih Departemen</option>
                                    @foreach ($departemen as $d)
                                        <option value="{{ $d->id }}">{{ $d->nama_departemen }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Bagian</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="bagian" id="bagiann" onchange="selectbagian()">
                                    <option value="0" selected>Pilih Bagian</option>
                                    @foreach ($bagian as $b)
                                        <option value="{{ $b->id }}">{{ $b->nama_bagian }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Sie</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="sie" id="siee">
                                    <option value="0" selected>Pilih Sie</option>
                                    @foreach ($sie as $s)
                                        <option value="{{ $s->id }}">{{ $s->nama_sie }}</option>
                                    @endforeach
                                </select>
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
    // selectdepartemen
    // console.log(@json($bagian))
    var bagian = @json($bagian);
    var sie = @json($sie);

    function selectdepartemen() {
        var departemen = document.getElementById('departemenn').value;
        var filterderpartemen = bagian.filter(b => b.id_departemen == departemen);
        console.log(filterderpartemen);
        str = "<select class='form-select' name='bagian' id='bagiann'>";
        str += "<option value='0' selected>Pilih Bagian</option>";

        for (let index = 0; index < filterderpartemen.length; index++) {
            //const element = array[index];
            console.log(filterderpartemen[index].nama_bagian);
            str += "<option value=" + filterderpartemen[index].id + ">" + filterderpartemen[index].nama_bagian +
                "</option>";
        }
        str += "</select>";
        // console.log(str);
        document.getElementById('bagiann').innerHTML = str;

        console.log(sie);
        strsie = "<select class='form-select' name='sie' id='siee'>";
        strsie += "<option value='0' selected>Pilih Sie</option>";

        for (let index = 0; index < sie.length; index++) {
            //const element = array[index];
            console.log(sie[index].nama_bagian);
            strsie += "<option value=" + sie[index].id + ">" + sie[index].nama_sie +
                "</option>";
        }
        strsie += "</select>";
        document.getElementById('siee').innerHTML = strsie;


    }

    // selectbagian
    function selectbagian() {
        var bagian = document.getElementById('bagiann').value;
        var filtersie = sie.filter(b => b.id_bagian == bagian);
        console.log(filtersie);
        str = "<select class='form-select' name='sie' id='siee'>";
        str += "<option value='0' selected>Pilih Sie</option>";

        for (let index = 0; index < filtersie.length; index++) {
            //const element = array[index];
            console.log(filtersie[index].nama_sie);
            str += "<option value=" + filtersie[index].id + ">" + filtersie[index].nama_sie +
                "</option>";
        }
        str += "</select>";
        // console.log(str);
        document.getElementById('siee').innerHTML = str;
    }

    // selectpid
    // console.log(@json($jabatan))
    var pid = @json($jabatan);

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
        // console.log(str);
        document.getElementById('pid').innerHTML = str;

    }
</script>
