import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'login_page.dart';

void main(List<String> args) {
  ZIMKit().init(
      appID: 1778090930,
      appSign:
          '8650e51666de7a9fbc5e6f95650d91429300a911ec58aa475fd25e03f05d1af5');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: const LoginPage(),
    );
  }
}
