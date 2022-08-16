class DetaiDayEntity {
  String? ngay;
  List<ViecNgay>? viecNgay;
  List<DinhCucGio>? dinhCucGio;
  List<GioQuyDangThienMon>? gioQuyDangThienMon;
  List<BonGioDaiCat>? bonGioDaiCat;
  List<GioTotThang>? gioTotThang;
  String? ngayAm;
  SaoNgay? saoNgay;
  String? canChiNam;
  String? canChiThang;
  String? canChiNgay;
  int? canNgay;

  DetaiDayEntity(
      {this.ngay,
      this.viecNgay,
      this.dinhCucGio,
      this.gioQuyDangThienMon,
      this.bonGioDaiCat,
      this.gioTotThang,
      this.ngayAm,
      this.saoNgay,
      this.canChiNam,
      this.canChiThang,
      this.canChiNgay,
      this.canNgay});
}

class ViecNgay {
  String? loaiViec;
  int? code;
  List<NhomViec>? nhomViec;

  ViecNgay({this.loaiViec, this.code, this.nhomViec});

  ViecNgay.fromJson(Map<String, dynamic> json) {
    loaiViec = json['loai_viec'];
    code = json['code'];
    if (json['nhom_viec'] != null) {
      nhomViec = <NhomViec>[];
      json['nhom_viec'].forEach((v) {
        nhomViec!.add(new NhomViec.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loai_viec'] = this.loaiViec;
    data['code'] = this.code;
    if (this.nhomViec != null) {
      data['nhom_viec'] = this.nhomViec!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NhomViec {
  String? tenNhomViec;
  List<Viec>? viec;

  NhomViec({this.tenNhomViec, this.viec});

  NhomViec.fromJson(Map<String, dynamic> json) {
    tenNhomViec = json['ten_nhom_viec'];
    if (json['viec'] != null) {
      viec = <Viec>[];
      json['viec'].forEach((v) {
        viec!.add(new Viec.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ten_nhom_viec'] = this.tenNhomViec;
    if (this.viec != null) {
      data['viec'] = this.viec!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Viec {
  int? id;
  String? tenViec;
  int? idNhomViec;
  int? loaiViec;
  String? tenNhomViec;

  Viec(
      {this.id,
      this.tenViec,
      this.idNhomViec,
      this.loaiViec,
      this.tenNhomViec});

  Viec.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tenViec = json['ten_viec'];
    idNhomViec = json['id_nhom_viec'];
    loaiViec = json['loai_viec'];
    tenNhomViec = json['ten_nhom_viec'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ten_viec'] = this.tenViec;
    data['id_nhom_viec'] = this.idNhomViec;
    data['loai_viec'] = this.loaiViec;
    data['ten_nhom_viec'] = this.tenNhomViec;
    return data;
  }
}

class DinhCucGio {
  int? gio;
  List<Sao>? sao;

  DinhCucGio({this.gio, this.sao});

  DinhCucGio.fromJson(Map<String, dynamic> json) {
    gio = json['gio'];
    if (json['sao'] != null) {
      sao = <Sao>[];
      json['sao'].forEach((v) {
        sao!.add(new Sao.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gio'] = this.gio;
    if (this.sao != null) {
      data['sao'] = this.sao!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sao {
  String? tenSao;
  int? id;
  String? loai;

  Sao({this.tenSao, this.id, this.loai});

  Sao.fromJson(Map<String, dynamic> json) {
    tenSao = json['ten_sao'];
    id = json['id'];
    loai = json['loai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ten_sao'] = this.tenSao;
    data['id'] = this.id;
    data['loai'] = this.loai;
    return data;
  }
}

class GioQuyDangThienMon {
  int? id;
  int? canNgay;
  int? tietKhi;
  String? gio;
  String? sao;

  GioQuyDangThienMon({this.id, this.canNgay, this.tietKhi, this.gio, this.sao});

  GioQuyDangThienMon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    canNgay = json['can_ngay'];
    tietKhi = json['tiet_khi'];
    gio = json['gio'];
    sao = json['sao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['can_ngay'] = this.canNgay;
    data['tiet_khi'] = this.tietKhi;
    data['gio'] = this.gio;
    data['sao'] = this.sao;
    return data;
  }
}

class BonGioDaiCat {
  int? id;
  int? canNgay;
  int? tietKhi;
  String? gio;
  String? sao;
  String? gioGoc;
  String? catHung;

  BonGioDaiCat(
      {this.id,
      this.canNgay,
      this.tietKhi,
      this.gio,
      this.sao,
      this.gioGoc,
      this.catHung});

  BonGioDaiCat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    canNgay = json['can_ngay'];
    tietKhi = json['tiet_khi'];
    gio = json['gio'];
    sao = json['sao'];
    gioGoc = json['gio_goc'];
    catHung = json['cat_hung'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['can_ngay'] = this.canNgay;
    data['tiet_khi'] = this.tietKhi;
    data['gio'] = this.gio;
    data['sao'] = this.sao;
    data['gio_goc'] = this.gioGoc;
    data['cat_hung'] = this.catHung;
    return data;
  }
}

class GioTotThang {
  int? id;
  int? thang;
  String? gioTheoSon;
  String? gio;

  GioTotThang({this.id, this.thang, this.gioTheoSon, this.gio});

  GioTotThang.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    thang = json['thang'];
    gioTheoSon = json['gio_theo_son'];
    gio = json['gio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['thang'] = this.thang;
    data['gio_theo_son'] = this.gioTheoSon;
    data['gio'] = this.gio;
    return data;
  }
}

class SaoNgay {
  List<InfoStar>? tot;
  List<InfoStar>? xau;

  SaoNgay({this.tot, this.xau});

  SaoNgay.fromJson(Map<String, dynamic> json) {
    if (json['tot'] != null) {
      tot = <InfoStar>[];
      json['tot'].forEach((v) {
        tot!.add(new InfoStar.fromJson(v));
      });
    }
    if (json['xau'] != null) {
      xau = <InfoStar>[];
      json['xau'].forEach((v) {
        xau!.add(new InfoStar.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tot != null) {
      data['tot'] = this.tot!.map((v) => v.toJson()).toList();
    }
    if (this.xau != null) {
      data['xau'] = this.xau!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InfoStar {
  String? tenSao;
  String? loai;
  String? loaiSao;
  int? id;

  InfoStar({this.tenSao, this.loai, this.loaiSao, this.id});

  InfoStar.fromJson(Map<String, dynamic> json) {
    tenSao = json['ten_sao'];
    loai = json['loai'];
    loaiSao = json['loai_sao'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ten_sao'] = this.tenSao;
    data['loai'] = this.loai;
    data['loai_sao'] = this.loaiSao;
    data['id'] = this.id;
    return data;
  }
}
