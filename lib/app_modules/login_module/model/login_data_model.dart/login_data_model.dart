// To parse this JSON data, do
//
//     final loginDataModel = loginDataModelFromJson(jsonString);

import 'dart:convert';

LoginDataModel loginDataModelFromJson(String str) =>
    LoginDataModel.fromJson(json.decode(str));

String loginDataModelToJson(LoginDataModel data) => json.encode(data.toJson());

class LoginDataModel {
  int id;
  String name;
  String email;
  String phone;
  String password;
  String address;
  String relationship;
  int noOfChildren;
  String image;

  LoginDataModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.address,
    required this.relationship,
    required this.noOfChildren,
    required this.image,
  });

  factory LoginDataModel.fromJson(Map<String, dynamic> json) => LoginDataModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        address: json["address"],
        relationship: json["relationship"],
        noOfChildren: json["no_of_children"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "address": address,
        "relationship": relationship,
        "no_of_children": noOfChildren,
        "image": image,
      };
}
