import 'package:flutter/material.dart';

class StatefulDemo extends StatefulWidget {
  const StatefulDemo({super.key});

  @override
  State<StatefulDemo> createState() => StatefulDemoState();
}

class StatefulDemoState extends State<StatefulDemo> {

  Color? bgColor = Colors.orangeAccent[100];
  String massage = "Hello Muzammil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Center(child: Text("Changing On Press",
            style: TextStyle(
              color: Colors.white,fontSize: 30,))),
      ),
      body: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: [
          SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [

                Text(massage,style: TextStyle(fontSize: 30,color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(onPressed: (){
                    massage = "Uzair the best";
                    setState(() {
                    });
                  },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orangeAccent[200],
                        minimumSize: Size(200,40)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Press and chnage the text",style: TextStyle(fontSize: 30),),
                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(onPressed: (){
                    bgColor = Colors.orangeAccent[200];
                    setState(() {

                    });
                  },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orangeAccent[200],
                        minimumSize: Size(200,40)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("ORANGE",style: TextStyle(fontSize: 30),),
                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(onPressed: (){
                    bgColor = Colors.red;
                    setState(() {

                    });
                  },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      minimumSize: Size(200,40)
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("RED",style: TextStyle(fontSize: 30),),
                      ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(onPressed: (){
                    bgColor = Colors.blue;
                    setState(() {

                    });
                  },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        minimumSize: Size(200,40)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("BLUE",style: TextStyle(fontSize: 30),),
                    ),),
                ),

              ],
            ),
          )
        ],
      )

    );
  }

}
