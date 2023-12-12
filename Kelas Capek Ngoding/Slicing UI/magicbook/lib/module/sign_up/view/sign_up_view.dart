import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magicbook/core.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  Widget build(context, SignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        size: 48,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Full Name",
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
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardView()),
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
                          "Create an Account",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text("By signing up, you agree to our"),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms",
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(
                      width: 1.5,
                    ),
                    Text("and"),
                    SizedBox(
                      width: 1.0,
                    ),
                    Text(
                      "Privacy",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 190.0,
                ),
                Text(
                  "I have an account",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<SignUpView> createState() => SignUpController();
}
