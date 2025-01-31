
import 'package:flutter/material.dart';
import 'package:magicbook1/core.dart';
import '../view/splash_view.dart';

class SplashController extends State<SplashView> {
    static late SplashController instance;
    late SplashView view;

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
        
    