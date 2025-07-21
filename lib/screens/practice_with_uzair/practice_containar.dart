import 'package:flutter/material.dart';

class PracticeContainar extends StatelessWidget {
  const PracticeContainar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Center(child: Text(
          "Practice Containar",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.blue,
        height: 250,
        width: 420,
      ),
    ),
    );
  }
}
