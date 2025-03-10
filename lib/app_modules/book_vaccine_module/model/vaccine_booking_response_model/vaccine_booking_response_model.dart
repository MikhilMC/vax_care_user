// To parse this JSON data, do
//
//     final vaccineBookingResponseModel = vaccineBookingResponseModelFromJson(jsonString);

import 'dart:convert';

VaccineBookingResponseModel vaccineBookingResponseModelFromJson(String str) =>
    VaccineBookingResponseModel.fromJson(json.decode(str));

String vaccineBookingResponseModelToJson(VaccineBookingResponseModel data) =>
    json.encode(data.toJson());

class VaccineBookingResponseModel {
  int id;
  int child;
  int parent;
  int healthProvider;
  int timeSlot;
  String status;
  List<String> vaccines;
  DateTime date;
  DateTime createdAt;
  String ageGroup;

  VaccineBookingResponseModel({
    required this.id,
    required this.child,
    required this.parent,
    required this.healthProvider,
    required this.timeSlot,
    required this.status,
    required this.vaccines,
    required this.date,
    required this.createdAt,
    required this.ageGroup,
  });

  factory VaccineBookingResponseModel.fromJson(Map<String, dynamic> json) =>
      VaccineBookingResponseModel(
        id: json["id"],
        child: json["child"],
        parent: json["parent"],
        healthProvider: json["health_provider"],
        timeSlot: json["time_slot"],
        status: json["status"],
        vaccines: List<String>.from(json["vaccines"].map((x) => x)),
        date: DateTime.parse(json["date"]),
        createdAt: DateTime.parse(json["created_at"]),
        ageGroup: json["age_group"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "child": child,
        "parent": parent,
        "health_provider": healthProvider,
        "time_slot": timeSlot,
        "status": status,
        "vaccines": List<dynamic>.from(vaccines.map((x) => x)),
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "age_group": ageGroup,
      };
}
