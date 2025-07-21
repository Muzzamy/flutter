import 'package:flutter/material.dart';

class PracticeRowAndColumn extends StatelessWidget {
  const PracticeRowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Center(child: Text(
        "Practice Row & Column",
        style: TextStyle(
        color: Colors.white
    ),
    ),
    ),
    ),
    body: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
          children: [
            Container(
              color: Colors.blue,
              height: 400,
              width: 400,
            ),
            Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Positioned(
              top: 180,
              left: 180,
              child: Container(
                color: Colors.black,
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),

    );
  }
}
