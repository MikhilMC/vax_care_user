import 'package:faker/faker.dart';
import 'package:vax_care_user/app_models/child.dart';

List<Child> generateFakeChildren() {
  final faker = Faker();
  return [
    Child(
      childId: 1,
      parentId: 1,
      name: faker.person.firstName(),
      birthdate: faker.date.dateTime(minYear: 2018, maxYear: 2022),
      bloodGroup: faker.randomGenerator
          .element(['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-']),
      photoUrl: faker.image.loremPicsum(width: 100, height: 100),
      height: faker.randomGenerator
          .integer(121, min: 60)
          .toDouble(), // Fix for height range
      weight: faker.randomGenerator
          .integer(
            31,
            min: 10,
          )
          .toDouble(), // Fix for weight range
      gender: faker.randomGenerator.element(['Male', 'Female']),
      healthConditions:
          faker.randomGenerator.boolean() ? faker.lorem.sentence() : null,
    ),
    Child(
      childId: 2,
      parentId: 1,
      name: faker.person.firstName(),
      birthdate: faker.date.dateTime(minYear: 2018, maxYear: 2022),
      bloodGroup: faker.randomGenerator.element(['A-', 'B-', 'O+', 'AB-']),
      photoUrl: faker.image.loremPicsum(width: 100, height: 100),
      height: faker.randomGenerator
          .integer(121, min: 60)
          .toDouble(), // Fix for height range
      weight: faker.randomGenerator
          .integer(31, min: 10)
          .toDouble(), // Fix for weight range
      gender: faker.randomGenerator.element(['Male', 'Female']),
      healthConditions:
          faker.randomGenerator.boolean() ? faker.lorem.sentence() : null,
    ),
  ];
}
