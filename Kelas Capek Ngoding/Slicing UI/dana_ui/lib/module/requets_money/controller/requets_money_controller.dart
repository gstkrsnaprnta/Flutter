
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/requets_money_view.dart';

class RequetsMoneyController extends State<RequetsMoneyView> {
    static late RequetsMoneyController instance;
    late RequetsMoneyView view;

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
        
    