import 'dart:io';

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
    } catch (e) {}
  }
}
