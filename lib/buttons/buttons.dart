import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice/model/doctor.dart';
import 'package:practice/screens/girdview_gridview_buileder/gridview_gridview_builder.dart';
import 'package:practice/screens/listview_listview_builder/listview_listview_builder.dart';
import 'package:practice/screens/row_column_stack/row_column_stack.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Text("BUTTONS"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // Elevated Button
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){

              return GridviewGridviewBuilder();

            }));
          },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Go to Grid",style: TextStyle(fontSize: 30),),
              )),


          // TextButton
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return ListviewListviewBuilder();
                }),
                );
              },
              child: Text("Click here toGo to List",
                style: TextStyle(fontSize: 30),
              ),
          ),

          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return RowColumnStack();
            }),
            );
          }, icon: Icon(Icons.ads_click,
          size: 40,)),

          TextButton.icon(
            onPressed: () {},
            label: Text(
              "Click here",
              style: TextStyle(fontSize: 50), // Increase text size
            ),
            icon: Icon(
              Icons.abc_outlined,
              size: 68, // Increase icon size
            ),
            style: ButtonStyle(
            ),
          ),

          GNav(
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            color: Colors.white,

              tabs:
          [
            GButton(icon: Icons.home,text: "Home",),
            GButton(icon: Icons.home),
            GButton(icon: Icons.home),
            GButton(icon: Icons.home),
          ]
          )

        ],
      ),
    );
  }
}
