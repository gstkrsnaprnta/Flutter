import 'package:flutter/material.dart';
import 'package:magicbookv1/core.dart';

class SignView extends StatefulWidget {
  const SignView({Key? key}) : super(key: key);

  Widget build(context, SignController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                )),
          ],
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignView()),
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Login with Facebook",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Badge(
                          child: Icon(Icons.facebook_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "or sign up with Email",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
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
                height: 15.0,
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
                      hintText: "Last Name",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
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
                height: 15.0,
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
                height: 15.0,
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
                height: 25.0,
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
                          builder: (context) => const SignUpView()),
                    );
                  },
                  child: const Text(
                    "Continue",
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 280.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignView> createState() => SignController();
}
