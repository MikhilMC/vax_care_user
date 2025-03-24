// To parse this JSON data, do
//
//     final vaccinationHistoryModel = vaccinationHistoryModelFromJson(jsonString);

import 'dart:convert';

VaccinationHistoryModel vaccinationHistoryModelFromJson(String str) =>
    VaccinationHistoryModel.fromJson(json.decode(str));

String vaccinationHistoryModelToJson(VaccinationHistoryModel data) =>
    json.encode(data.toJson());

class VaccinationHistoryModel {
  String childName;
  List<AgeGroup> ageGroups;

  VaccinationHistoryModel({
    required this.childName,
    required this.ageGroups,
  });

  factory VaccinationHistoryModel.fromJson(Map<String, dynamic> json) =>
      VaccinationHistoryModel(
        childName: json["child_name"],
        ageGroups: List<AgeGroup>.from(
            json["age_groups"].map((x) => AgeGroup.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "child_name": childName,
        "age_groups": List<dynamic>.from(ageGroups.map((x) => x.toJson())),
      };
}

class AgeGroup {
  String ageGroup;
  String status;

  AgeGroup({
    required this.ageGroup,
    required this.status,
  });

  factory AgeGroup.fromJson(Map<String, dynamic> json) => AgeGroup(
        ageGroup: json["age_group"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "age_group": ageGroup,
        "status": status,
      };
}
