import 'dart:ui';

import 'package:flutter/material.dart';

class DataFatchPage extends StatelessWidget {

  String incoming ;


  DataFatchPage({super.key,required this.incoming});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0), // Light orange background
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCC80), // Soft orange
        elevation: 2,
        title: Center(
          child: Text(
            "Data Fatch",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text("$incoming")
            ]
                ),
        ),
      ),
    );
  }
}
