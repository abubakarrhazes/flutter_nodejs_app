// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:flutter_nodejs_app/utilities/global_variables.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_nodejs_app/models/user.dart';

class AuthService {
  void signUpUsers({
    required name,
    required email,
    required password,
  }) async {
    try {
      User user = User(
          id: '',
          name: '',
          email: '',
          password: '',
          stateOfOrigin: '',
          address: '',
          dateOfBirth: '',
          type: '',
          token: '');
      http.Response res = await http.post(Uri.parse('$URI/auth/register'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type ': 'application/json; charset=UTF-8'
          });
    } catch (e) {}
  }
}
