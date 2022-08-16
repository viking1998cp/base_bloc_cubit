import 'package:lichviet_modules/domain/entities/tietkhi_response_entity.dart';

class TietKhiModel implements TietKhiEntity {
  @override
  String? khoiTiet;

  @override
  int? ngayBatDau;

  @override
  String? ten;

  @override
  String? tenThangTietKhi;

  @override
  int? tietKhi;

  @override
  String? gioTietKhi;

  TietKhiModel.fromJson(Map<String, dynamic> json) {
    ten = json['ten'];
    khoiTiet = json['khoi_tiet'];
    tietKhi = json['tiet_khi'];
    gioTietKhi = json['gio_tiet_khi'];
    ngayBatDau = json['ngay_bat_dau'];
    tenThangTietKhi = json['ten_thang_tiet_khi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ten'] = this.ten;
    data['khoi_tiet'] = this.khoiTiet;
    data['tiet_khi'] = this.tietKhi;
    data['gio_tiet_khi'] = this.gioTietKhi;
    data['ngay_bat_dau'] = this.ngayBatDau;
    data['ten_thang_tiet_khi'] = this.tenThangTietKhi;
    return data;
  }
}
