
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/topup_view.dart';

class TopupController extends State<TopupView> {
    static late TopupController instance;
    late TopupView view;

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
        
    