import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenum = 1;
  int rightdicenum = 1;

  void Dicefacechange() {
    setState(() {
      leftdicenum = Random().nextInt(6) + 1;
      rightdicenum = Random().nextInt(6) + 1;
      print('lest button is got pressed');
      print('number turns to $leftdicenum');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Dicefacechange();
              },
              child: Image.asset('images/dice$leftdicenum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                Dicefacechange();
                print('right button is got pressed');
                print('numbers turns to $rightdicenum');
              },
              child: Image.asset('images/dice$rightdicenum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
