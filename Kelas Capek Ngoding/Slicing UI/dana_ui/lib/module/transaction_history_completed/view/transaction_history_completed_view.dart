
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/transaction_history_completed_controller.dart';

class TransactionHistoryCompletedView extends StatefulWidget {
    const TransactionHistoryCompletedView({Key? key}) : super(key: key);

    Widget build(context, TransactionHistoryCompletedController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("TransactionHistoryCompleted"),
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
    State<TransactionHistoryCompletedView> createState() => TransactionHistoryCompletedController();
}
    