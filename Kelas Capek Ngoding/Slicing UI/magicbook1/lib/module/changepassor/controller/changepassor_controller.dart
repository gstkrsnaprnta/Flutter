
import 'package:flutter/material.dart';
import 'package:magicbook1/core.dart';
import '../view/changepassor_view.dart';

class ChangepassorController extends State<ChangepassorView> {
    static late ChangepassorController instance;
    late ChangepassorView view;

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
        
    