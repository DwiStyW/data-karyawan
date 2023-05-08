<!-- Modal tambah pendidikan -->
<div class="modal fade" id="tambahpendidikan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Pendidikan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body bg-light">
                <div class="container-fluid">
                    <form action="/postpendidikan" enctype="multipart/form-data" method="post">
                        @csrf
                        @foreach ($bataspensiun as $bp)
                            <div class="card bordered mb-4 pt-3"style="padding-left:20px;padding-right:20px">
                                @if ($bp->tingkatan_pendidikan == 'Lainnya')
                                    <div class="mt-2 mb-2">
                                        <h6 class="text-center">
                                            Pendidikan Profesi
                                        </h6>
                                    </div>
                                @endif
                                <div class="row">
                                    <div class="col-lg-3">
                                        <label for="">
                                            @if ($bp->tingkatan_pendidikan == 'SMA')
                                                {{ 'SMA/SMK' }}
                                            @elseif ($bp->tingkatan_pendidikan == 'Lainnya')
                                                {{ 'Nama Intansi' }}
                                            @else
                                                {{ $bp->tingkatan_pendidikan }}
                                            @endif
                                        </label>
                                    </div>
                                    <div class="col-lg-9 mb-3">
                                        <input type="text" class="form-control" placeholder="nama sekolah"
                                            id="pendidikan{{ $bp->tingkatan_pendidikan }}"
                                            name="pendidikan{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                </div>
                                @if (
                                    $bp->tingkatan_pendidikan == 'SMA' or
                                        $bp->tingkatan_pendidikan == 'Diploma' or
                                        $bp->tingkatan_pendidikan == 'S1' or
                                        $bp->tingkatan_pendidikan == 'S2' or
                                        $bp->tingkatan_pendidikan == 'S3')
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <label for="">Jurusan</label>
                                        </div>
                                        <div class="col-lg-9 mb-3">
                                            <input type="text" class="form-control" placeholder="nama jurusan"
                                                id="jurusan{{ $bp->tingkatan_pendidikan }}"
                                                name="jurusan{{ $bp->tingkatan_pendidikan }}">
                                        </div>
                                    </div>
                                @endif
                                @if ($bp->tingkatan_pendidikan == 'Lainnya')
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <label for="">Profesi</label>
                                        </div>
                                        <div class="col-lg-9 mb-3">
                                            <select class="form-select" name="jurusan{{ $bp->tingkatan_pendidikan }}"
                                                id="jurusan{{ $bp->tingkatan_pendidikan }}">
                                                <option value="" selected disabled>Pilih Profesi</option>
                                                <option value="Apoteker">Apoteker</option>
                                                <option value="Guru">Guru</option>
                                                <option value="Insinyur">Insinyur</option>
                                                <option value="Akuntan">Akuntan</option>
                                            </select>
                                        </div>
                                    </div>
                                @endif
                                <div class="row">
                                    <div class="col-lg-3">
                                        <label for="">Tahun Masuk</label>
                                    </div>
                                    <div class="col-lg-3 mb-3">
                                        <input type="number" class="form-control"
                                            id="masuk{{ $bp->tingkatan_pendidikan }}"
                                            name="masuk{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                    <div class="col-lg-3">
                                        <label for="">Tahun Keluar</label>
                                    </div>
                                    <div class="col-lg-3 mb-3">
                                        <input type="number" class="form-control"
                                            id="keluar{{ $bp->tingkatan_pendidikan }}"
                                            name="keluar{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                </div>
                                {{-- <div class="row">
                                    <div class="col-lg-2">
                                        <label for="">Ijasah</label>
                                    </div>
                                    <div class="col-lg-10 mb-3">
                                        <input type="file" class="form-control"
                                            id="ijasa{{ $bp->tingkatan_pendidikan }}"
                                            name="ijasa{{ $bp->tingkatan_pendidikan }}">
                                    </div>
                                </div> --}}
                            </div>
                        @endforeach
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
