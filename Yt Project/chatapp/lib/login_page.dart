import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userId = TextEditingController();
  final username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              TextFormField(
                controller: userId,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Id",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await ZIMKit()
                        .connectUser(id: userId.text, name: username.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
