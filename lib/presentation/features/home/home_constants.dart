import 'package:lichviet_modules/core/constants/icon_constants.dart';
import 'package:lichviet_modules/core/constants/image_constants.dart';
import 'package:lichviet_modules/domain/entities/benefit_entity.dart';

class HomeConstants {
  static final imageList = [
    ImageConstants.imgHome1,
    ImageConstants.imgHome2,
    ImageConstants.imgHome3,
    ImageConstants.imgHome4,
    ImageConstants.imgHome5,
    ImageConstants.imgHome6,
    ImageConstants.imgHome7,
    ImageConstants.imgHome8,
    ImageConstants.imgHome9,
    ImageConstants.imgHome10,
  ];
  static final week = ['HAI', 'BA', 'TƯ', 'NĂM', 'SÁU', 'BẢY', 'CN'];
  static final dayOfWeek = [
    'THỨ HAI',
    'THỨ BA',
    'THỨ TƯ',
    'THỨ 5',
    'THỨ 6',
    'THỨ BẢY',
    'CHỦ NHẬT'
  ];
  static final benefits = [
    BenefitEntity(
        idImage: 2131232027,
        idItem: 28,
        numberClick: 0,
        title: 'Tử Vi\nHàng Ngày',
        imgURL: IconConstants.icTuvihangngay),
    BenefitEntity(
        idImage: 2131231956,
        idItem: 5,
        numberClick: 0,
        title: 'Nhịp\nSinh Học',
        imgURL: IconConstants.icNhipsinhhoc),
    BenefitEntity(
        idImage: 2131232032,
        idItem: 12,
        numberClick: 0,
        title: 'Văn Khấn',
        imgURL: IconConstants.icVankhan),
    BenefitEntity(
        idImage: 2131232026,
        idItem: 34,
        numberClick: 0,
        title: 'Tử Vi\n2022',
        imgURL: IconConstants.icTuvi2022),
    BenefitEntity(
        idImage: 2131232028,
        idItem: 27,
        numberClick: 0,
        title: 'Tử Vi\nTrọn Đời',
        imgURL: IconConstants.icTuvitrondoi),
    BenefitEntity(
        idImage: 2131231848,
        idItem: 23,
        numberClick: 0,
        title: 'Bói\nTình Duyên',
        imgURL: IconConstants.icBoiTinhDuyen),
    BenefitEntity(
        idImage: 2131231921,
        idItem: 6,
        numberClick: 0,
        title: 'La Bàn',
        imgURL: IconConstants.icLaban),
    BenefitEntity(
        idImage: 2131231893,
        idItem: 24,
        numberClick: 0,
        title: 'Giải Mộng',
        imgURL: IconConstants.icGiaimong),
    BenefitEntity(
        idImage: 2131232009,
        idItem: 17,
        numberClick: 0,
        title: 'Thước\nLỗ Ban',
        imgURL: IconConstants.icThuocloban),
    BenefitEntity(
        idImage: 2131231865,
        idItem: 2,
        numberClick: 0,
        title: 'Cung\nHoàng Đạo',
        imgURL: IconConstants.icCunghoangdao),
    BenefitEntity(
        idImage: 2131232052,
        idItem: 25,
        numberClick: 0,
        title: 'Xem Sao',
        imgURL: IconConstants.icXemsao),
    BenefitEntity(
        idImage: 2131232051,
        idItem: 21,
        numberClick: 0,
        title: 'Xem\nNgày Tốt',
        imgURL: IconConstants.icXemngaytot),
    BenefitEntity(
        idImage: 2131231880,
        idItem: 14,
        numberClick: 0,
        title: 'Đổi Ngày',
        imgURL: IconConstants.icDoingay),
  ];

  // menu
  static const lichNgay = 'lichNgay';
  static const xemNgayTot = 'xemNgayTot';
  static const taoSuKien = 'taoSuKien';

  // tien ich
  static const tuViHangNgay = 'tuViHangNgay';
  static const nhipSinhHoc = 'nhipSinhHoc';
  static const vanKhan = 'taoSuKien';
  static const tuVi = 'tuVi';
  static const tuViTronDoi = 'tuViTronDoi';
  static const boiTinhDuyen = 'boiTinhDuyen';
  static const laBan = 'laBan';
  static const giaiMong = 'giaiMong';
  static const thuocLoBan = 'thuocLoBan';
  static const cungHoangDao = 'cungHoangDao';
  static const xemSao = 'xemSao';
  static const xemNgayTotTienIch = 'xemNgayTotTienIch';
  static const doiNgay = 'doiNgay';

  static const listUtil = [
    tuViHangNgay,
    nhipSinhHoc,
    vanKhan,
    tuVi,
    tuViTronDoi,
    boiTinhDuyen,
    laBan,
    giaiMong,
    thuocLoBan,
    cungHoangDao,
    xemSao,
    xemNgayTotTienIch,
    doiNgay
  ];
}
