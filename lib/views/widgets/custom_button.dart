import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() actionTap;
  const CustomButton({super.key, required this.text, required this.actionTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 40,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
