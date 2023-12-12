import 'package:flutter/material.dart';
import 'package:skincare_ui/core.dart';
import '../controller/loginpage_controller.dart';

class LoginpageView extends StatefulWidget {
  const LoginpageView({Key? key}) : super(key: key);

  Widget build(context, LoginpageController controller) {
    controller.view = this;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/login.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Column(
            children: [
              const Column(
                  // Text(
                  //   "Beauty Must",
                  //   style: TextStyle(
                  //       fontSize: 50,
                  //       fontWeight: FontWeight.w800,
                  //       color: Colors.white),
                  // ),
                  // Text(
                  //   "Be Taken",
                  //   style: TextStyle(
                  //       fontSize: 50,
                  //       fontWeight: FontWeight.w800,
                  //       color: Colors.white),
                  // ),
                  // Text(
                  //   "Beauty Must",
                  //   style: TextStyle(
                  //       fontSize: 50,
                  //       fontWeight: FontWeight.w800,
                  //       color: Colors.white),
                  // ),
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: 'John Doe',
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "What's your name?",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

  @override
  State<LoginpageView> createState() => LoginpageController();
}
