
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/transaction_history_controller.dart';

class TransactionHistoryView extends StatefulWidget {
    const TransactionHistoryView({Key? key}) : super(key: key);

    Widget build(context, TransactionHistoryController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("TransactionHistory"),
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
    State<TransactionHistoryView> createState() => TransactionHistoryController();
}
    