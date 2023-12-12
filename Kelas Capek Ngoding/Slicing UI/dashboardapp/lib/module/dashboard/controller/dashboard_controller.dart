import 'package:flutter/material.dart';
import 'package:dashboardapp/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menulist = [
    {
      "label": "Restaurant",
      "icon": Icons.restaurant,
    },
    {
      "label": "Hotel",
      "icon": Icons.hotel,
    },
    {
      "label": "Shopping",
      "icon": Icons.shopping_bag,
    },
    {
      "label": "Hospital",
      "icon": Icons.local_hospital,
    },
    {
      "label": "Scholl",
      "icon": Icons.school,
    },
    {
      "label": "Restaurant",
      "icon": Icons.restaurant,
    }
  ];
}
