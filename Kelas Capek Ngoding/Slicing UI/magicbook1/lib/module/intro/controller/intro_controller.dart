
import 'package:flutter/material.dart';
import 'package:magicbook1/core.dart';
import '../view/intro_view.dart';

class IntroController extends State<IntroView> {
    static late IntroController instance;
    late IntroView view;

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
        
    