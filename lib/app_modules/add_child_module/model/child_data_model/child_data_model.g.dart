// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildDataModelImpl _$$ChildDataModelImplFromJson(Map<String, dynamic> json) =>
    _$ChildDataModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toDouble(),
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      photo: json['photo'] as String?,
      medicalConditions: json['medicalConditions'] as String?,
      bloodGroup: json['bloodGroup'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChildDataModelImplToJson(
        _$ChildDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'height': instance.height,
      'weight': instance.weight,
      'birthdate': instance.birthdate?.toIso8601String(),
      'photo': instance.photo,
      'medicalConditions': instance.medicalConditions,
      'bloodGroup': instance.bloodGroup,
      'parent': instance.parent,
    };
