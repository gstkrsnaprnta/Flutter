
import 'package:flutter/material.dart';
import 'package:magicbookv1/state_util.dart';
import '../view/sign_view.dart';

class SignController extends State<SignView> {
    static late SignController instance;
    late SignView view;

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
        
    