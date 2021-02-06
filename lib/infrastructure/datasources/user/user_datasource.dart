import 'package:flutter_playground/domain/user.dart';

abstract class UserDataSource {

  Future<User> getUser();
}