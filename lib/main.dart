// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/screens/forgot_password.dart';
import 'package:flutter_nodejs_app/views/screens/login.dart';
import 'package:flutter_nodejs_app/views/screens/login_screen.dart';
import 'package:flutter_nodejs_app/views/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter NodeJs App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/login': (context) => Login(),
      },
    );
  }
}
