import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SwitchDemoAssignmnet extends StatefulWidget {
  const SwitchDemoAssignmnet({super.key});

  @override
  State<SwitchDemoAssignmnet> createState() => _SwitchDemoAssignmnetState();
}

bool switchStatus = false;

class _SwitchDemoAssignmnetState extends State<SwitchDemoAssignmnet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFF3E0), // Light orange background
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFCC80), // Soft orange
          elevation: 2,
          title: const Center(
            child: Text(
              "Switch",
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
                child: Icon(
                  Icons.lightbulb,
                  size: 200,
                  color: switchStatus ? Colors.orangeAccent : Colors.black,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Turn Status",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Switch(
                      value: switchStatus, onChanged: (checked){
                    setState(() {
                      switchStatus = checked;
                    });
                  }),
                )
              ],
            ),
            ElevatedButton(
                onPressed: (){
                  Fluttertoast.showToast(msg: "Light is ${switchStatus ? "ON" : "OFF"}");
                },
                child: Text("Clicked",style: TextStyle(color: Colors.black),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
            ),
            )
          ],
        )
    );
  }
}
