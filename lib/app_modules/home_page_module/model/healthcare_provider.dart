// To parse this JSON data, do
//
//     final healthcareProvider = healthcareProviderFromJson(jsonString);

import 'dart:convert';

List<HealthcareProvider> healthcareProviderFromJson(String str) =>
    List<HealthcareProvider>.from(
        json.decode(str).map((x) => HealthcareProvider.fromJson(x)));

String healthcareProviderToJson(List<HealthcareProvider> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HealthcareProvider {
  int id;
  String name;
  String email;
  String password;
  String providerType;
  String address;
  String phone;
  String latitude;
  String longitude;
  List<int> vaccines;

  HealthcareProvider({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.providerType,
    required this.address,
    required this.phone,
    required this.latitude,
    required this.longitude,
    required this.vaccines,
  });

  factory HealthcareProvider.fromJson(Map<String, dynamic> json) =>
      HealthcareProvider(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        providerType: json["provider_type"],
        address: json["address"],
        phone: json["phone"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        vaccines: List<int>.from(json["vaccines"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "provider_type": providerType,
        "address": address,
        "phone": phone,
        "latitude": latitude,
        "longitude": longitude,
        "vaccines": List<dynamic>.from(vaccines.map((x) => x)),
      };
}
