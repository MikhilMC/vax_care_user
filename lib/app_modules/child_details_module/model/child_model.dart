// To parse this JSON data, do
//
//     final childModel = childModelFromJson(jsonString);

import 'dart:convert';

ChildModel childModelFromJson(String str) =>
    ChildModel.fromJson(json.decode(str));

String childModelToJson(ChildModel data) => json.encode(data.toJson());

class ChildModel {
  int id;
  String name;
  String gender;
  double height;
  double weight;
  DateTime birthdate;
  String photo;
  String? medicalConditions;
  String bloodGroup;
  int parent;

  ChildModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.height,
    required this.weight,
    required this.birthdate,
    required this.photo,
    this.medicalConditions,
    required this.bloodGroup,
    required this.parent,
  });

  factory ChildModel.fromJson(Map<String, dynamic> json) => ChildModel(
        id: json["id"],
        name: json["name"],
        gender: json["gender"],
        height: json["height"]?.toDouble(),
        weight: json["weight"]?.toDouble(),
        birthdate: DateTime.parse(json["birthdate"]),
        photo: json["photo"],
        medicalConditions: json["medical_conditions"],
        bloodGroup: json["blood_group"],
        parent: json["parent"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "gender": gender,
        "height": height,
        "weight": weight,
        "birthdate":
            "${birthdate.year.toString().padLeft(4, '0')}-${birthdate.month.toString().padLeft(2, '0')}-${birthdate.day.toString().padLeft(2, '0')}",
        "photo": photo,
        "medical_conditions": medicalConditions,
        "blood_group": bloodGroup,
        "parent": parent,
      };
}
