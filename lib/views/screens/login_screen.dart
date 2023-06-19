import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/widgets/custom_button.dart';
import 'package:flutter_nodejs_app/views/widgets/optional_logins.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/img_1.png',
                height: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Let get you in',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              OptionalLogins(
                  actionButton: () => print('Name'),
                  image: 'assets/images/fb.png',
                  text: 'Continue With Facebook '),
              const SizedBox(
                height: 10,
              ),
              OptionalLogins(
                  actionButton: () => print('Name'),
                  image: 'assets/images/google.png',
                  text: 'Continue With Google '),
              const SizedBox(
                height: 10,
              ),
              OptionalLogins(
                  actionButton: () => print('Name'),
                  image: 'assets/images/twitter.png',
                  text: 'Continue With Twitter '),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Or'),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  text: 'Sign In Password',
                  actionTap: () {
                    Navigator.pushNamed(context, '/login');
                  }),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont Have An Account?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
