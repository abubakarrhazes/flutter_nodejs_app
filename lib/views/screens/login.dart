// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/widgets/custom_button.dart';
import 'package:flutter_nodejs_app/views/widgets/custom_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

@override
void dispose() {
  _emailController;
  _passwordController;
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/img_4.png'),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Login to Your Account',
              style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 400,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Card(
                child: Form(
                  key: _loginKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomField(
                          controller: _emailController,
                          labelText: 'Email',
                          hintText: 'Enter Your Email',
                          icon: Icons.mail_outlined,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomField(
                          controller: _passwordController,
                          labelText: 'Password',
                          hintText: 'Enter Your Password Here',
                          icon: Icons.lock_outlined,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/forgot');
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(text: 'Login Now', actionTap: () {}),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'You dont have an Account ? Sign Up Here',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
