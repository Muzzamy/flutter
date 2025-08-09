import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:practice/model/doctor.dart';
import 'package:practice/screens/assignments/switch_asssignment/switch_demo_assignmnet.dart';
import 'package:practice/screens/data-fatch_page/data_fatch_page.dart';
import 'package:practice/screens/dice_game/dice_game.dart';
import 'package:practice/screens/doctors_details/doctors_details.dart';
import 'package:practice/screens/girdview_gridview_buileder/gridview_gridview_builder.dart';
import 'package:practice/screens/student_dmc/student_dmc.dart';

import '../listview_listview_builder/listview_listview_builder.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  var tfC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0), // Light orange background
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCC80), // Soft orange
        elevation: 2,
        title: const Center(
          child: Text(
            "LANDING PAGE",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const SwitchDemoAssignmnet();
              }));
            }, child: Text("ASSIGNMENTS",style: TextStyle(fontSize: 18),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC80),
                  foregroundColor: Colors.black),
            ),
            Gap(10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const DiceGame();
              }));
            }, child: Text("Dice Game",style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFCC80),
                    foregroundColor: Colors.black),
            ),
            Gap(10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ListviewListviewBuilder(); }));
            }, child: Text("Doctors Details",style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC80),
                  foregroundColor: Colors.black),
            ),
            Gap(10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return GridviewGridviewBuilder(); }));
            }, child: Text("GirdView",style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC80),
                  foregroundColor: Colors.black),
            ),
            Gap(10),
            ElevatedButton(onPressed: (){

              String name = tfC.text;

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return DataFatchPage(incoming: name,); }));
            }, child: Text("Fatch Data",style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC80),
                  foregroundColor: Colors.black),
            ),
            Gap(10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return StudentDmc(); }));
            }, child: Text("Student DMC",style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCC80),
                  foregroundColor: Colors.black),
            ),
            Gap(15),
            TextField(
              controller: tfC,
              decoration: InputDecoration(
                labelText: 'Type Something',
                prefixIcon: Icon(Icons.type_specimen),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
