import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class EventModel extends DayEventEntity {
  @JsonKey(name: '_id', defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: '')
  final String desc;
  @JsonKey(defaultValue: '')
  final String location;
  @JsonKey(defaultValue: '')
  final String time;
  @JsonKey(defaultValue: '')
  final String colorHex;
  @JsonKey(defaultValue: 0)
  final int day;
  @JsonKey(defaultValue: 0)
  final int month;
  @JsonKey(defaultValue: 0)
  final int year;
  @JsonKey(defaultValue: '')
  final String date;

  EventModel({
    required this.day,
    required this.location,
    required this.id,
    required this.desc,
    required this.name,
    required this.month,
    required this.time,
    required this.colorHex,
    required this.year,
    required this.date,
  }) : super(
            date: date,
            name: name,
            time: time,
            desc: desc,
            location: location,
            colorHex: colorHex);

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  Map<String, dynamic> toJsonUpdater() => <String, dynamic>{
        '_id': id,
        'name': name,
        'desc': desc,
        'location': location,
        'time': time,
        'colorHex': colorHex,
      };
}
