
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
    const DashboardView({Key? key}) : super(key: key);

    Widget build(context, DashboardController controller) {
    controller.view = this;

    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    return DefaultTabController(
    length: 4,
    initialIndex: controller.selectedIndex,
    child: Scaffold(
    body: IndexedStack(
    index: controller.selectedIndex,
    children: [
    Container(
    color: Colors.red,
    ),
    Container(
    color: Colors.green,
    ),
    Container(
    color: Colors.blue,
    ),
    Container(
    color: Colors.purple,
    ),
    ],
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: controller.selectedIndex,
    onTap: (newIndex) => controller.updateIndex(newIndex),
    type: BottomNavigationBarType.fixed,
    items: const [
    BottomNavigationBarItem(
    icon: Icon(
    Icons.dashboard,
    ),
    label: "Dashboard",
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.list,
    ),
    label: "Order",
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.favorite,
    ),
    label: "Favorite",
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.person,
    ),
    label: "User",
    ),
    ],
    ),
    ),
    );

    

    @override
    State<DashboardView> createState() => DashboardController();
}
}