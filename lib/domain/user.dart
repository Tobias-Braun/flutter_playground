import 'dart:convert';

import 'gender.dart';
import 'name.dart';

class User {
  final Gender gender;
  final Name name;
  User({
    this.gender,
    this.name,
  });

  User copyWith({
    Gender gender,
    Name name,
  }) {
    return User(
      gender: gender ?? this.gender,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'gender': gender?.toString(),
      'name': name?.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      gender: genderFromString(map['gender']),
      name: Name.fromMap(map['name']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(gender: $gender, name: $name)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User && o.gender == gender && o.name == name;
  }

  @override
  int get hashCode => gender.hashCode ^ name.hashCode;
}

class UserCreationException implements Exception {
  final String cause;
  const UserCreationException(this.cause);
}

class NameCreationException extends UserCreationException {
  NameCreationException(String cause) : super(cause);
}

class GenderCreationException extends UserCreationException {
  GenderCreationException(String cause) : super(cause);
}
