
import 'package:flutter/material.dart';
import 'package:magicbook1/core.dart';
import '../controller/forgotpassword_controller.dart';

class ForgotpasswordView extends StatefulWidget {
    const ForgotpasswordView({Key? key}) : super(key: key);

    Widget build(context, ForgotpasswordController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Forgotpassword"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<ForgotpasswordView> createState() => ForgotpasswordController();
}
    