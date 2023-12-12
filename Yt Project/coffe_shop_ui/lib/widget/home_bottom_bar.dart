import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: const BoxDecoration(color: Color(0xFF212325), boxShadow: [
        BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 8),
      ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
