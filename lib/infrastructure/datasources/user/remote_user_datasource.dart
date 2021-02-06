import 'dart:convert';
import 'dart:io';

import 'package:flutter_playground/domain/user.dart';
import 'package:flutter_playground/infrastructure/datasources/user/user_datasource.dart';
import 'package:http/http.dart' as http;

const apiUrl = "https://randomuser.me/api/";

class RemoteUserDataSource extends UserDataSource {
  @override
  Future<User> getUser() async {
    final response = await http
        .get(apiUrl, headers: {HttpHeaders.acceptEncodingHeader: "json"});
    final jsonMap = json.decode(response.body);
    final firstResult = jsonMap['results'][0];
    return User.fromMap(firstResult);
  }
}
