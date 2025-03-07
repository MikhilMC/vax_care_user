// ignore_for_file: public_member_api_docs, sort_constructors_first
class Child {
  final int childId;
  final int parentId;
  final String name;
  final DateTime birthdate;
  final String bloodGroup;
  final String photoUrl;
  final double height; // in cm
  final double weight; // in kg
  final String gender;
  final String? healthConditions;

  Child({
    required this.childId,
    required this.parentId,
    required this.name,
    required this.birthdate,
    required this.bloodGroup,
    required this.photoUrl,
    required this.height,
    required this.weight,
    required this.gender,
    this.healthConditions,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Child && childId == other.childId);

  @override
  int get hashCode => childId.hashCode;
}
