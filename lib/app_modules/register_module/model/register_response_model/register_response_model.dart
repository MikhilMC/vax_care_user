// To parse this JSON data, do
//
//     final registerResponseModel = registerResponseModelFromJson(jsonString);

import 'dart:convert';

RegisterResponseModel registerResponseModelFromJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) =>
    json.encode(data.toJson());

class RegisterResponseModel {
  String status;
  String message;
  Data data;

  RegisterResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      RegisterResponseModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  int id;
  String image;
  String name;
  String email;
  String phone;
  String password;
  String address;
  String relationship;
  int noOfChildren;

  Data({
    required this.id,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.address,
    required this.relationship,
    required this.noOfChildren,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        address: json["address"],
        relationship: json["relationship"],
        noOfChildren: json["no_of_children"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "address": address,
        "relationship": relationship,
        "no_of_children": noOfChildren,
      };
}
