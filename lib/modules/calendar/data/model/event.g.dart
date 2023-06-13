// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      day: json['day'] as int? ?? 0,
      location: json['location'] as String? ?? '',
      id: json['_id'] as int? ?? 0,
      desc: json['desc'] as String? ?? '',
      name: json['name'] as String? ?? '',
      month: json['month'] as int? ?? 0,
      time: json['time'] as String? ?? '',
      colorHex: json['colorHex'] as String? ?? '',
      year: json['year'] as int? ?? 0,
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'location': instance.location,
      'time': instance.time,
      'colorHex': instance.colorHex,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'date': instance.date,
    };
