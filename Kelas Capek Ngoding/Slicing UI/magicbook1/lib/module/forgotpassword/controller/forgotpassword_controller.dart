
import 'package:flutter/material.dart';
import 'package:magicbook1/core.dart';
import '../view/forgotpassword_view.dart';

class ForgotpasswordController extends State<ForgotpasswordView> {
    static late ForgotpasswordController instance;
    late ForgotpasswordView view;

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
        
    