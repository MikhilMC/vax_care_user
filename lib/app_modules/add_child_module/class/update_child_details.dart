// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class UpdateChildDetails {
  final int childId;
  final String? name;
  final String? gender;
  final double? height;
  final double? weight;
  final DateTime? dateOfBirth;
  final String? bloodGroup;
  final String? medicalConditions;
  final File? image;
  UpdateChildDetails({
    required this.childId,
    this.name,
    this.gender,
    this.height,
    this.weight,
    this.dateOfBirth,
    this.bloodGroup,
    this.medicalConditions,
    this.image,
  });
}
