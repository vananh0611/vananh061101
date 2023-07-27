// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Home Screen",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              ColorfulBoxes(),
              const SizedBox(height: 20),
              Image.asset(
                'assets/dart.png',
                width: MediaQuery.of(context).size.width,
                height: 30,
              ),
              Image.asset(
                'assets/flutter.png',
                width: MediaQuery.of(context).size.width,
                height: 30,
              ),
              Image.asset(
                'assets/android.png',
                width: MediaQuery.of(context).size.width,
                height: 30,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorfulBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorBox(color: Colors.blue),
        ColorBox(color: Colors.green),
        ColorBox(color: Colors.orange),
      ],
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;

  ColorBox({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: color,
    );
  }
}
