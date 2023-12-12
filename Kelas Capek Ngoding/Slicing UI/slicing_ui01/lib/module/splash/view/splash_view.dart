import 'package:flutter/material.dart';
import 'package:slicing_ui01/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/icon/logo.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
