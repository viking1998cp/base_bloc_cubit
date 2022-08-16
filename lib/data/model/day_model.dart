
import 'package:lichviet_modules/domain/entities/day_entity.dart';

class DayModel implements DayEntity {
  @override
  int fullMoonEvents;
  @override
  int hoangDao;
  @override
  bool isSpecialDay;
  @override
  bool isCurrentDay;
  @override
  bool isEventExisting;
  @override
  bool isFocus;
  @override
  bool isInCurrentMonth;
  @override
  bool isPersionalEventExisting;
  @override
  bool isRamEventExisting;
  @override
  bool isSelected;
  @override
  bool isSystemEventExisting;
  @override
  int lunarDate;
  @override
  int lunarMonth;
  @override
  int lunarYear;
  @override
  int solarDate;
  @override
  int solarMonth;
  @override
  int solarYear;
  @override
  int specialEvents;
  @override
  int totalEvents;

  DayModel({
    required this.fullMoonEvents,
    required this.hoangDao,
    required this.isSpecialDay,
    required this.isCurrentDay,
    required this.isEventExisting,
    required this.isFocus,
    required this.isInCurrentMonth,
    required this.isPersionalEventExisting,
    required this.isRamEventExisting,
    required this.isSelected,
    required this.isSystemEventExisting,
    required this.lunarDate,
    required this.lunarMonth,
    required this.lunarYear,
    required this.solarDate,
    required this.solarMonth,
    required this.solarYear,
    required this.specialEvents,
    required this.totalEvents,
  });

  factory DayModel.fromJson(Map<String, dynamic> json) {
    return DayModel(
      fullMoonEvents: json['fullMoonEvents'],
      hoangDao: json['hoangDao'],
      isSpecialDay: json['iSpecialDay'],
      isCurrentDay: json['isCurrentDay'],
      isEventExisting: json['isEventExisting'],
      isFocus: json['isFocus'],
      isInCurrentMonth: json['isInCurrentMonth'],
      isPersionalEventExisting: json['isPersionalEventExisting'],
      isRamEventExisting: json['isRamEventExisting'],
      isSelected: json['isSelected'],
      isSystemEventExisting: json['isSystemEventExisting'],
      lunarDate: json['lunarDate'],
      lunarMonth: json['lunarMonth'],
      lunarYear: json['lunarYear'],
      solarDate: json['solarDate'],
      solarMonth: json['solarMonth'],
      solarYear: json['solarYear'],
      specialEvents: json['specialEvents'],
      totalEvents: json['totalEvents'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullMoonEvents'] = fullMoonEvents;
    data['hoangDao'] = hoangDao;
    data['iSpecialDay'] = isSpecialDay;
    data['isCurrentDay'] = isCurrentDay;
    data['isEventExisting'] = isEventExisting;
    data['isFocus'] = isFocus;
    data['isInCurrentMonth'] = isInCurrentMonth;
    data['isPersionalEventExisting'] = isPersionalEventExisting;
    data['isRamEventExisting'] = isRamEventExisting;
    data['isSelected'] = isSelected;
    data['isSystemEventExisting'] = isSystemEventExisting;
    data['lunarDate'] = lunarDate;
    data['lunarMonth'] = lunarMonth;
    data['lunarYear'] = lunarYear;
    data['solarDate'] = solarDate;
    data['solarMonth'] = solarMonth;
    data['solarYear'] = solarYear;
    data['specialEvents'] = specialEvents;
    data['totalEvents'] = totalEvents;
    return data;
  }
}
