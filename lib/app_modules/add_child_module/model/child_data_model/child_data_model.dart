// To parse this JSON data, do
//
//     final childDataModel = childDataModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'child_data_model.freezed.dart';
part 'child_data_model.g.dart';

ChildDataModel childDataModelFromJson(String str) =>
    ChildDataModel.fromJson(json.decode(str));

String childDataModelToJson(ChildDataModel data) => json.encode(data.toJson());

@freezed
class ChildDataModel with _$ChildDataModel {
  const factory ChildDataModel({
    int? id,
    String? name,
    String? gender,
    int? height,
    double? weight,
    DateTime? birthdate,
    String? photo,
    String? medicalConditions,
    String? bloodGroup,
    int? parent,
  }) = _ChildDataModel;

  factory ChildDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChildDataModelFromJson(json);
}
