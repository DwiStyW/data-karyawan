<!-- Modal edit Jabatan -->
<div class="modal fade" id="editjabatan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Jabatan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="updatejabatan" enctype="multipart/form-data" method="post">
                        @csrf
                        <input type="hidden" class="form-control" required name="id_jabatan" id="id_jabatan">
                        <input type="hidden" class="form-control" required name="updateby" id="updateby">
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Nama Jabatan</label>
                            </div>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" required name="nama_jabatan"
                                    id="nama_jabatan">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3">
                                <label for="">Departemen</label>
                            </div>
                            <div class="col-lg-9">
                                <select class="form-select" name="departemen" id="departemen"
                                    onchange="selectdepartemenn()">
                                    <option value="" selected>Pilih Departemen</option>
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
                                <select class="form-select" name="bagian" id="bagian" onchange="selectbagiann()">
                                    <option value="" selected>Pilih Bagian</option>
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
                                <select class="form-select" name="sie" id="sie">
                                    <option value="" selected>Pilih Sie</option>
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
                                <select class="form-select" name="level" id="levell" onchange="selectpidd()">
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
                                <select class="form-select" name="pid" id="pidd">
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

    function selectdepartemenn() {
        var departemen = document.getElementById('departemen').value;
        var filterderpartemen = bagian.filter(b => b.id_departemen == departemen);
        console.log(filterderpartemen);
        str = "<select class='form-select' name='bagian' id='bagian'>";
        str += "<option value='' selected>Pilih Bagian</option>";

        for (let index = 0; index < filterderpartemen.length; index++) {
            //const element = array[index];
            console.log(filterderpartemen[index].nama_bagian);
            str += "<option value=" + filterderpartemen[index].id + ">" + filterderpartemen[index].nama_bagian +
                "</option>";
        }
        str += "</select>";
        // console.log(str);
        document.getElementById('bagian').innerHTML = str;

        console.log(sie);
        strsie = "<select class='form-select' name='sie' id='sie'>";
        strsie += "<option value='' selected>Pilih Sie</option>";

        for (let index = 0; index < sie.length; index++) {
            //const element = array[index];
            console.log(sie[index].nama_bagian);
            strsie += "<option value=" + sie[index].id + ">" + sie[index].nama_sie +
                "</option>";
        }
        strsie += "</select>";
        document.getElementById('sie').innerHTML = strsie;


    }

    // selectbagian
    function selectbagiann() {
        var bagian = document.getElementById('bagian').value;
        var filtersie = sie.filter(b => b.id_bagian == bagian);
        console.log(filtersie);
        str = "<select class='form-select' name='sie' id='sie'>";
        str += "<option value='' selected>Pilih Sie</option>";

        for (let index = 0; index < filtersie.length; index++) {
            //const element = array[index];
            console.log(filtersie[index].nama_sie);
            str += "<option value=" + filtersie[index].id + ">" + filtersie[index].nama_sie +
                "</option>";
        }
        str += "</select>";
        // console.log(str);
        document.getElementById('sie').innerHTML = str;
    }

    function editjabatan(id, nama_jabatan, departemen, bagian, sie, level, pid, updateby) {
        console.log(id, nama_jabatan, departemen, bagian, sie, updateby);
        document.getElementById('id_jabatan').value = id;
        document.getElementById('pidd').value = pid;
        document.getElementById('levell').value = level;
        document.getElementById('updateby').value = updateby;

        if (nama_jabatan != 'null') {
            document.getElementById('nama_jabatan').value = nama_jabatan;
        } else {
            document.getElementById('nama_jabatan').value = '';
        }
        if (departemen != 'null') {
            document.getElementById('departemen').value = departemen;
        } else {
            document.getElementById('departemen').value = '';
        }
        if (bagian != 'null') {
            document.getElementById('bagian').value = bagian;
        } else {
            document.getElementById('bagian').value = '';
        }
        if (sie != 'null') {
            document.getElementById('sie').value = sie;
        } else {
            document.getElementById('sie').value = '';
        }
    }

    // console.log(@json($jabatan))
    var pid = @json($jabatan);
    // var filtered = pid.filter(p => p.level < 5)
    // console.log(filtered)

    function selectpidd() {
        var level = document.getElementById('levell').value;
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
        document.getElementById('pidd').innerHTML = str;

    }
</script>
