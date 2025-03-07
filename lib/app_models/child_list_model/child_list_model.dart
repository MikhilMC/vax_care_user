// To parse this JSON data, do
//
//     final childListModel = childListModelFromJson(jsonString);

import 'dart:convert';

List<ChildListModel> childListModelFromJson(String str) =>
    List<ChildListModel>.from(
        json.decode(str).map((x) => ChildListModel.fromJson(x)));

String childListModelToJson(List<ChildListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChildListModel {
  int id;
  String name;
  String gender;
  double height;
  double weight;
  DateTime birthdate;
  String photo;
  dynamic medicalConditions;
  String bloodGroup;
  int parent;

  ChildListModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.height,
    required this.weight,
    required this.birthdate,
    required this.photo,
    required this.medicalConditions,
    required this.bloodGroup,
    required this.parent,
  });

  factory ChildListModel.fromJson(Map<String, dynamic> json) => ChildListModel(
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
