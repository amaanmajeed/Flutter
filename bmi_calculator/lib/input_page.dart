// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: myContainer(colour: activeCardColor),
                ),
                Expanded(child: myContainer(colour: activeCardColor)),
              ],
            ),
          ),
          const Expanded(child: myContainer(colour: activeCardColor)),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: myContainer(colour: activeCardColor)),
                Expanded(child: myContainer(colour: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}

class myContainer extends StatelessWidget {
  const myContainer({Key? key, required this.colour}) : super(key: key);

  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
