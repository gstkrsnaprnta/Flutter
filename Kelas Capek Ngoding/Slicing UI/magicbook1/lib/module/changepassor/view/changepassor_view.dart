
import 'package:flutter/material.dart';
import 'package:magicbook1/core.dart';
import '../controller/changepassor_controller.dart';

class ChangepassorView extends StatefulWidget {
    const ChangepassorView({Key? key}) : super(key: key);

    Widget build(context, ChangepassorController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Changepassor"),
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
    State<ChangepassorView> createState() => ChangepassorController();
}
    