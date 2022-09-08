// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberDTO _$$_MemberDTOFromJson(Map<String, dynamic> json) => _$_MemberDTO(
      name: json['name'] as String,
      role: json['role'] as String,
      startContract: DateTime.parse(json['startContract'] as String),
      endContract: json['endContract'] == null
          ? null
          : DateTime.parse(json['endContract'] as String),
      colorValue: json['colorValue'] as int,
    );

Map<String, dynamic> _$$_MemberDTOToJson(_$_MemberDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'startContract': instance.startContract.toIso8601String(),
      'endContract': instance.endContract?.toIso8601String(),
      'colorValue': instance.colorValue,
    };
