// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final IconData? icon;
  const CustomField(
      {required this.controller, this.labelText, this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {},
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffix: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
