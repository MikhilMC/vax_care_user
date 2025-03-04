// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_child_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddChildResponseModelImpl _$$AddChildResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddChildResponseModelImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ChildDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddChildResponseModelImplToJson(
        _$AddChildResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
