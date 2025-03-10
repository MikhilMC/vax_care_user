// To parse this JSON data, do
//
//     final slotModel = slotModelFromJson(jsonString);

import 'dart:convert';

List<SlotModel> slotModelFromJson(String str) =>
    List<SlotModel>.from(json.decode(str).map((x) => SlotModel.fromJson(x)));

String slotModelToJson(List<SlotModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SlotModel {
  int id;
  String startTime;
  String endTime;

  SlotModel({
    required this.id,
    required this.startTime,
    required this.endTime,
  });

  factory SlotModel.fromJson(Map<String, dynamic> json) => SlotModel(
        id: json["id"],
        startTime: json["start_time"],
        endTime: json["end_time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "start_time": startTime,
        "end_time": endTime,
      };
}
