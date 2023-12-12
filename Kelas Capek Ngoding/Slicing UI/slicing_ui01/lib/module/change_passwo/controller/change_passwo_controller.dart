
import 'package:flutter/material.dart';
import 'package:slicing_ui01/core.dart';
import '../view/change_passwo_view.dart';

class ChangePasswoController extends State<ChangePasswoView> {
    static late ChangePasswoController instance;
    late ChangePasswoView view;

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
        
    