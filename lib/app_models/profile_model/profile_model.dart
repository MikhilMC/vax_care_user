// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  int id;
  String image;
  String name;
  String email;
  String phone;
  String password;
  String address;
  String relationship;
  int noOfChildren;

  ProfileModel({
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

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
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
