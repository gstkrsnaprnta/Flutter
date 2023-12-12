
import 'package:flutter/material.dart';
import 'package:slicing_ui01/core.dart';
import '../controller/change_passwo_controller.dart';

class ChangePasswoView extends StatefulWidget {
    const ChangePasswoView({Key? key}) : super(key: key);

    Widget build(context, ChangePasswoController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ChangePasswo"),
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
    State<ChangePasswoView> createState() => ChangePasswoController();
}
    