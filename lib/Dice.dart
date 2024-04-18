
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 4;
  int rightDiceNo = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dice',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 64,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32, right: 16),
                    child: Image.asset('android/assets/images/dice$leftDiceNo.jpg'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 32),
                    child: Image.asset('android/assets/images/dice$rightDiceNo.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    leftDiceNo = Random().nextInt(6) + 1;
                    rightDiceNo = Random().nextInt(6) + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.shuffle,
                        color: Colors.black87,
                      ),
                    
                      Text(
                        'Shuffle',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}