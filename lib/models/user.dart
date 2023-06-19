import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String stateOfOrigin;
  final String address;
  final String dateOfBirth;
  final String type;
  final String token;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.stateOfOrigin,
      required this.address,
      required this.dateOfBirth,
      required this.type,
      required this.token});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': password,
      'stateOfOrigin': stateOfOrigin,
      'address': address,
      'dateOfBirth': dateOfBirth,
      'type': type,
      'token': token
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['_id'] ?? '',
        name: map['name'] ?? '',
        email: map['email'] ?? '',
        password: map['password'] ?? '',
        stateOfOrigin: map['stateOfOrigin'] ?? '',
        address: map['address'] ?? '',
        dateOfBirth: map['dateOfBirh'] ?? '',
        type: map['type'] ?? '',
        token: map['token'] ?? '');
  }

  String toJson() => json.encode(toMap());
}
