import 'package:lichviet_modules/domain/entities/detail_day_entity.dart';

class DetailDayModel implements DetaiDayEntity {
  @override
  List<BonGioDaiCat>? bonGioDaiCat;

  @override
  String? canChiNam;

  @override
  String? canChiNgay;

  @override
  String? canChiThang;

  @override
  int? canNgay;

  @override
  List<DinhCucGio>? dinhCucGio;

  @override
  List<GioQuyDangThienMon>? gioQuyDangThienMon;

  @override
  List<GioTotThang>? gioTotThang;

  @override
  String? ngay;

  @override
  String? ngayAm;

  @override
  SaoNgay? saoNgay;

  @override
  List<ViecNgay>? viecNgay;
  DetailDayModel.fromJson(Map<String, dynamic> json) {
    ngay = json['ngay'];
    if (json['viec_ngay'] != null) {
      viecNgay = <ViecNgay>[];
      json['viec_ngay'].forEach((v) {
        viecNgay!.add(ViecNgay.fromJson(v));
      });
    }
    if (json['dinh_cuc_gio'] != null) {
      dinhCucGio = <DinhCucGio>[];
      json['dinh_cuc_gio'].forEach((v) {
        dinhCucGio!.add(DinhCucGio.fromJson(v));
      });
    }
    if (json['gio_quy_dang_thien_mon'] != null) {
      gioQuyDangThienMon = <GioQuyDangThienMon>[];
      json['gio_quy_dang_thien_mon'].forEach((v) {
        gioQuyDangThienMon!.add(GioQuyDangThienMon.fromJson(v));
      });
    }
    if (json['bon_gio_dai_cat'] != null) {
      bonGioDaiCat = <BonGioDaiCat>[];
      json['bon_gio_dai_cat'].forEach((v) {
        bonGioDaiCat!.add(BonGioDaiCat.fromJson(v));
      });
    }
    if (json['gio_tot_thang'] != null) {
      gioTotThang = <GioTotThang>[];
      json['gio_tot_thang'].forEach((v) {
        gioTotThang!.add(GioTotThang.fromJson(v));
      });
    }
    ngayAm = json['ngay_am'];
    saoNgay =
        json['sao_ngay'] != null ? SaoNgay.fromJson(json['sao_ngay']) : null;
    canChiNam = json['can_chi_nam'];
    canChiThang = json['can_chi_thang'];
    canChiNgay = json['can_chi_ngay'];
    canNgay = json['can_ngay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ngay'] = this.ngay;
    if (this.viecNgay != null) {
      data['viec_ngay'] = this.viecNgay!.map((v) => v.toJson()).toList();
    }
    if (this.dinhCucGio != null) {
      data['dinh_cuc_gio'] = this.dinhCucGio!.map((v) => v.toJson()).toList();
    }
    if (this.gioQuyDangThienMon != null) {
      data['gio_quy_dang_thien_mon'] =
          this.gioQuyDangThienMon!.map((v) => v.toJson()).toList();
    }
    if (this.bonGioDaiCat != null) {
      data['bon_gio_dai_cat'] =
          this.bonGioDaiCat!.map((v) => v.toJson()).toList();
    }
    if (this.gioTotThang != null) {
      data['gio_tot_thang'] = this.gioTotThang!.map((v) => v.toJson()).toList();
    }
    data['ngay_am'] = this.ngayAm;
    if (this.saoNgay != null) {
      data['sao_ngay'] = this.saoNgay!.toJson();
    }
    data['can_chi_nam'] = this.canChiNam;
    data['can_chi_thang'] = this.canChiThang;
    data['can_chi_ngay'] = this.canChiNgay;
    data['can_ngay'] = this.canNgay;
    return data;
  }
}
