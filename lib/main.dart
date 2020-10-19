import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll the Dice'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1, rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    /// Generates two random numbers between 1 - 6
    /// Updates both the left and right dice number
    void updateDiceNum() {
      setState(() {
        leftDiceNum = (Random().nextInt(6) + 1);
        rightDiceNum = (Random().nextInt(6) + 1);
      });
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () => updateDiceNum(),
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => updateDiceNum(),
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {}
