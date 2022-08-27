import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0e0f1c),
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Body Text'),
      ),
    );
  }
}