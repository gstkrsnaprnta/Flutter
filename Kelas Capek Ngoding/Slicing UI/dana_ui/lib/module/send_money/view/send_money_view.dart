
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/send_money_controller.dart';

class SendMoneyView extends StatefulWidget {
    const SendMoneyView({Key? key}) : super(key: key);

    Widget build(context, SendMoneyController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("SendMoney"),
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
    State<SendMoneyView> createState() => SendMoneyController();
}
    