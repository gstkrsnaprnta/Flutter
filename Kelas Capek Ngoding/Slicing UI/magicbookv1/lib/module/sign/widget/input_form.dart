import 'package:flutter/material.dart';

class FormButtom extends StatelessWidget {
  const FormButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            6.0,
          ),
        ),
      ),
      child: Center(
        child: TextField(
          style: TextStyle(
            color: Colors.grey[800],
          ),
          decoration: InputDecoration(
            hintText: "Firts Name",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
