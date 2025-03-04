// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class ParentRegistrationDetails {
  final String name;
  final String email;
  final String phone;
  final String password;
  final String address;
  final String relationship;
  final File image;
  ParentRegistrationDetails({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.address,
    required this.relationship,
    required this.image,
  });
}
