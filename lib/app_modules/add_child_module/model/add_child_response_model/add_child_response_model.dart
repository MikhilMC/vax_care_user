// To parse this JSON data, do
//
//     final addChildResponseModel = addChildResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:vax_care_user/app_modules/add_child_module/model/child_data_model/child_data_model.dart';

part 'add_child_response_model.freezed.dart';
part 'add_child_response_model.g.dart';

AddChildResponseModel addChildResponseModelFromJson(String str) =>
    AddChildResponseModel.fromJson(json.decode(str));

String addChildResponseModelToJson(AddChildResponseModel data) =>
    json.encode(data.toJson());

@freezed
class AddChildResponseModel with _$AddChildResponseModel {
  const factory AddChildResponseModel({
    String? status,
    String? message,
    ChildDataModel? data,
  }) = _AddChildResponseModel;

  factory AddChildResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddChildResponseModelFromJson(json);
}
