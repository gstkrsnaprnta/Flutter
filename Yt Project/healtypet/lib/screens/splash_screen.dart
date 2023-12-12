import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [Image.asset("assets/images/background.png"),
         SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const SizedBox(
            height: 42.0,
            ),
            Image.asset('assets/images/Logo.png', height: 22,),
            const SizedBox(
            height: 73.0,
            ),
            RichText(textAlign:TextAlign.center, text:  TextSpan(text: "Helping you\nto keep", style: GoogleFonts.manrope(fontSize: 24, color: const Color(0xFFDEE1FE,), letterSpacing: 1/100, height: 152/100), children: [ TextSpan(text: "your bestie"), TextSpan(text: '\nstyay healthy')]),)
        ],
      ),
    ),
        ],
      ),
    );
  
  
  }
}