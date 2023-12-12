import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Wisata Kendari"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: Colors.blue,
                  ),
                  const Divider()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
