import 'package:flutter_playground/domain/user.dart';

enum Gender { MALE, FEMALE, OTHER }

Gender genderFromString(String gender) {
  switch (gender) {
    case "male":
      return Gender.MALE;
    case "female":
      return Gender.FEMALE;
    case "other":
      return Gender.OTHER;
    default:
      throw GenderCreationException(
          "value '$gender' can not be used to create a gender.");
  }
}
