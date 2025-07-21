import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumnStack extends StatelessWidget {
  const RowColumnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Center(child: Text("Row_Column",style: TextStyle(color: Colors.white,fontSize: 30,),)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
          SizedBox(
            width: 20,
            height: 20,
          ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("First",style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
