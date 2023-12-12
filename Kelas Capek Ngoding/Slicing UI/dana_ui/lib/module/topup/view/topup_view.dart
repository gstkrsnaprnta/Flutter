
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/topup_controller.dart';

class TopupView extends StatefulWidget {
    const TopupView({Key? key}) : super(key: key);

    Widget build(context, TopupController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Topup"),
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
    State<TopupView> createState() => TopupController();
}
    