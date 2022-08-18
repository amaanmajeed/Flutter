// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 9;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text("Ask Me Anything"),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue[400],
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
