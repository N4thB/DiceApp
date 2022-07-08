import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void changeDice(){
    setState((){
      LeftDiceNumber=Random().nextInt(6)+1;
      RightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                changeDice();

              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

