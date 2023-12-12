import 'package:flutter/material.dart';
import 'package:magicbook/core.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Welcome\nTo MagicBook",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700)),
                      ),
                      Image.asset(
                        "assets/logo.png",
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  Text(
                    "Write less do more",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.grey[300],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      hintText: "Password",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.grey[300],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpView()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 48,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "Login",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Forgot password?",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 245.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpView()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        )),
                    child: SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign Up",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                            )),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
