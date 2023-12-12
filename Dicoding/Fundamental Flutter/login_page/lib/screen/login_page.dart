import 'package:flutter/material.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network(
            "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/new-ui-logo.png",
            width: 200.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
