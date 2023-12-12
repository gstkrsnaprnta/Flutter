
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/requets_money_controller.dart';

class RequetsMoneyView extends StatefulWidget {
    const RequetsMoneyView({Key? key}) : super(key: key);

    Widget build(context, RequetsMoneyController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("RequetsMoney"),
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
    State<RequetsMoneyView> createState() => RequetsMoneyController();
}
    