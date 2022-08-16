import 'package:lichviet_modules/domain/entities/zodiac_entity.dart';

class ZodiacModel implements ZodiacEntity {
  @override
  String createdAt;
  @override
  String createdBy;
  @override
  String damPhanThanhCong;
  @override
  String date;
  @override
  String dateTitle;
  @override
  int id;
  @override
  int public;
  @override
  String mauMayMan;
  @override
  int priority;
  @override
  String saoHopCa;
  @override
  String soMayMan;
  @override
  String suNghiep;
  @override
  String tamTrang;
  @override
  String tenCung;
  @override
  String theChat;
  @override
  String tinhCam;

  ZodiacModel(
      {required this.createdAt,
      required this.createdBy,
      required this.damPhanThanhCong,
      required this.date,
      required this.dateTitle,
      required this.id,
      required this.public,
      required this.mauMayMan,
      required this.priority,
      required this.saoHopCa,
      required this.soMayMan,
      required this.suNghiep,
      required this.tamTrang,
      required this.tenCung,
      required this.theChat,
      required this.tinhCam});

  factory ZodiacModel.fromJson(Map<String, dynamic> json) {
    return ZodiacModel(
      createdAt: json['created_at'],
      createdBy: json['created_by'],
      damPhanThanhCong: json['damPhanThanhCong'],
      date: json['date'],
      dateTitle: json['dateTitle'],
      id: json['id'],
      public: json['public'],
      mauMayMan: json['mauMayMan'],
      priority: json['priority'],
      saoHopCa: json['saoHopCa'],
      soMayMan: json['soMayMan'],
      suNghiep: json['suNghiep'],
      tamTrang: json['tamTrang'],
      tenCung: json['tenCung'],
      theChat: json['theChat'],
      tinhCam: json['tinhCam'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['damPhanThanhCong'] = damPhanThanhCong;
    data['date'] = date;
    data['dateTitle'] = dateTitle;
    data['id'] = id;
    data['public'] = public;
    data['mauMayMan'] = mauMayMan;
    data['priority'] = priority;
    data['saoHopCa'] = saoHopCa;
    data['soMayMan'] = soMayMan;
    data['suNghiep'] = suNghiep;
    data['tamTrang'] = tamTrang;
    data['tenCung'] = tenCung;
    data['theChat'] = theChat;
    data['tinhCam'] = tinhCam;
    return data;
  }
}
