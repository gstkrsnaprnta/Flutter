
import 'package:flutter/material.dart';
import 'package:magicbookv1/core.dart';
import '../controller/detail_product_controller.dart';

class DetailProductView extends StatefulWidget {
    const DetailProductView({Key? key}) : super(key: key);

    Widget build(context, DetailProductController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("DetailProduct"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<DetailProductView> createState() => DetailProductController();
}
    