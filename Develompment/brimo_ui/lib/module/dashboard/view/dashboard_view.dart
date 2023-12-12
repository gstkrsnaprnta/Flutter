import 'package:flutter/material.dart';
import 'package:brimo_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
