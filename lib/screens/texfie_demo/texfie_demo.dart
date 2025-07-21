import 'package:flutter/material.dart';

class TexfieDemo extends StatefulWidget {
  const TexfieDemo({super.key});

  @override
  State<TexfieDemo> createState() => TexfieDemoState();
}

class TexfieDemoState extends State<TexfieDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Center(child: Text("Text_Field",style: TextStyle(color: Colors.white,fontSize: 30,),)),
      ),
    );
  }
}
