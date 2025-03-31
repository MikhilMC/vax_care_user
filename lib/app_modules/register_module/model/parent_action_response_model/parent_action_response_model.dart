// To parse this JSON data, do
//
//     final parentActionResponseModel = parentActionResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:vax_care_user/app_modules/register_module/model/user_data_model/user_data_model.dart';

ParentActionResponseModel parentActionResponseModelFromJson(String str) =>
    ParentActionResponseModel.fromJson(json.decode(str));

String parentActionResponseModelToJson(ParentActionResponseModel data) =>
    json.encode(data.toJson());

class ParentActionResponseModel {
  String status;
  String message;
  UserDataModel data;

  ParentActionResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ParentActionResponseModel.fromJson(Map<String, dynamic> json) =>
      ParentActionResponseModel(
        status: json["status"],
        message: json["message"],
        data: UserDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
