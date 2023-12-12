
import 'package:flutter/material.dart';
import 'package:skincare_ui/core.dart';
import '../view/loginpage_view.dart';

class LoginpageController extends State<LoginpageView> {
    static late LoginpageController instance;
    late LoginpageView view;

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
        
    