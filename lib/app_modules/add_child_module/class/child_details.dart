// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class ChildDetails {
  final String name;
  final String gender;
  final double height;
  final double weight;
  final DateTime dateOfBirth;
  final String bloodGroup;
  final String? medicalConditions;
  final int parentId;
  final File image;
  ChildDetails({
    required this.name,
    required this.gender,
    required this.height,
    required this.weight,
    required this.dateOfBirth,
    required this.bloodGroup,
    this.medicalConditions,
    required this.parentId,
    required this.image,
  });
}
