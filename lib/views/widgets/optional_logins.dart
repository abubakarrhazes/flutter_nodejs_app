import 'package:flutter/material.dart';

class OptionalLogins extends StatelessWidget {
  final String image;
  final String text;
  final Function()? actionButton;
  OptionalLogins(
      {required this.image, required this.text, required this.actionButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionButton,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey, style: BorderStyle.solid),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            const SizedBox(
              width: 1,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
