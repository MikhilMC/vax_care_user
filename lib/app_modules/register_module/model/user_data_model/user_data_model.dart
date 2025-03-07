// To parse this JSON data, do
//
//     final userDataModel = userDataModelFromJson(jsonString);

import 'dart:convert';

UserDataModel userDataModelFromJson(String str) =>
    UserDataModel.fromJson(json.decode(str));

String userDataModelToJson(UserDataModel data) => json.encode(data.toJson());

class UserDataModel {
  int id;
  String image;
  String name;
  String email;
  String phone;
  String password;
  String address;
  String relationship;
  int noOfChildren;

  UserDataModel({
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

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
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
