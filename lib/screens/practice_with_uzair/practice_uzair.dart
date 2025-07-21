import 'package:flutter/material.dart';

class PracticeUzair extends StatelessWidget {
  const PracticeUzair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Center(child: Text("Practice Flutter")),
      ),
      body: Center(child: Text("This is my flutter Body",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          color: Colors.purple
        ),
      ),
      ),
    );
  }
}
