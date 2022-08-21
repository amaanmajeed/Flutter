import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const Xylo());
}

class Xylo extends StatelessWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.red,
              ),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.orange,
              ),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.yellow,
              ),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.green,
              ),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.teal,
              ),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
