// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  const ActionButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width, 50),
            backgroundColor: Colors.green,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)))),
        onPressed: () => onPressed,
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
