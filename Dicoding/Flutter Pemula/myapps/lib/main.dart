import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void onChanged(String? value) {
    // Lakukan sesuatu dengan nilai yang dipilih
    print('Nilai yang dipilih: $value');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> data = ["Dart", "Java", "C++"];
    String name;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Myapps"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Text Button"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outline Button"),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_down),
              ),
              DropdownButton(
                hint: const Text("Select Language"),
                items: data
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: onChanged,
              ),
              Image.network(
                "https://i.pinimg.com/originals/55/39/8b/55398b80d2b3d3e43327a1626013d14e.png",
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
