// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDTO _$$_TaskDTOFromJson(Map<String, dynamic> json) => _$_TaskDTO(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      hours: json['hours'] as int,
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      atNight: json['atNight'] as bool,
      date: DateTime.parse(json['date'] as String),
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$_TaskDTOToJson(_$_TaskDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'hours': instance.hours,
      'members': instance.members,
      'atNight': instance.atNight,
      'date': instance.date.toIso8601String(),
      'completed': instance.completed,
    };
