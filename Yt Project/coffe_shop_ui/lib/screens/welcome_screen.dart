import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
              opacity: 0.6,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coffe Shop",
                style:
                    GoogleFonts.pacifico(fontSize: 50.0, color: Colors.white)),
            Column(
              children: [
                Text(
                  "Felling Low? Take a Sip of Coffe",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 80,
                ),
                Material(
                  color: const Color(0xFFE57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 35),
                      decoration: const BoxDecoration(),
                      child: const Text(
                        "Get Start",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
