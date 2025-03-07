// To parse this JSON data, do
//
//     final addChildResponseModel = addChildResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:vax_care_user/app_modules/add_child_module/model/child_data_model/child_data_model.dart';

AddChildResponseModel addChildResponseModelFromJson(String str) =>
    AddChildResponseModel.fromJson(json.decode(str));

String addChildResponseModelToJson(AddChildResponseModel data) =>
    json.encode(data.toJson());

class AddChildResponseModel {
  String status;
  String message;
  ChildDataModel data;

  AddChildResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AddChildResponseModel.fromJson(Map<String, dynamic> json) =>
      AddChildResponseModel(
        status: json["status"],
        message: json["message"],
        data: ChildDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
