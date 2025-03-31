// To parse this JSON data, do
//
//     final childActionResponseModel = childActionResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:vax_care_user/app_modules/add_child_module/model/child_data_model/child_data_model.dart';

ChildActionResponseModel childActionResponseModelFromJson(String str) =>
    ChildActionResponseModel.fromJson(json.decode(str));

String childActionResponseModelToJson(ChildActionResponseModel data) =>
    json.encode(data.toJson());

class ChildActionResponseModel {
  String status;
  String message;
  ChildDataModel data;

  ChildActionResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ChildActionResponseModel.fromJson(Map<String, dynamic> json) =>
      ChildActionResponseModel(
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
