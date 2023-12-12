
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/transaction_history_completed_view.dart';

class TransactionHistoryCompletedController extends State<TransactionHistoryCompletedView> {
    static late TransactionHistoryCompletedController instance;
    late TransactionHistoryCompletedView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    