// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/widgets/custom_button.dart';
import 'package:flutter_nodejs_app/views/widgets/custom_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final GlobalKey<FormState> _registerKey = GlobalKey<FormState>();
final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

@override
void dispose() {
  _nameController;
  _emailController;
  _passwordController;
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/img_3.png'),
              SizedBox(
                height: 15,
              ),
              Text(
                'Create an Account Now',
                style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  key: _registerKey,
                  child: Column(
                    children: [
                      CustomField(
                        controller: _nameController,
                        labelText: 'Name',
                        hintText: 'Enter Your Name Here',
                        icon: Icons.person_2_outlined,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomField(
                        controller: _emailController,
                        labelText: 'Email',
                        hintText: 'Enter Your email Address Here',
                        icon: Icons.mail_outline_outlined,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomField(
                        controller: _passwordController,
                        labelText: 'Password',
                        hintText: 'Enter Your Password Here',
                        icon: Icons.lock_outline,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                        text: 'Register Now',
                        actionTap: () => print(''),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
