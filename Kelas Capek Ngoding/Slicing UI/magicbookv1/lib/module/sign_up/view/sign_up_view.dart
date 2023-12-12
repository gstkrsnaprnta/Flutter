import 'package:flutter/material.dart';
import 'package:magicbookv1/core.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  Widget build(context, SignUpController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
          child: Column(
            children: [
              const Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 80.0,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/Profile.png"))),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      6.0,
                    ),
                  ),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                      hintText: "Firts Name",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      6.0,
                    ),
                  ),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      6.0,
                    ),
                  ),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardView()),
                    );
                  },
                  child: const Text(
                    "Create an account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Column(
                children: [
                  Text("By sign up, you agree to our"),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    "Terms and Privacy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  )
                ],
              ),
              const SizedBox(
                height: 210.0,
              ),
              const Text(
                "I have an account",
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignUpView> createState() => SignUpController();
}
