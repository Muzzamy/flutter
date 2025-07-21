import 'package:flutter/material.dart';
import 'package:practice/common/my_text_style.dart';
import 'package:practice/model/doctor.dart';

class DoctorsDetails extends StatelessWidget {
  final Doctor doctor;
  DoctorsDetails({super.key , required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Center(child: Text("Doctor Details",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,),
        ),
        ),
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(doctor.imagePath?? "https://www.pngplay.com/wp-content/uploads/12/User-Avatar-Profile-Transparent-Clip-Art-Background.png"),
          ),
          Text("Name : ${doctor.name}" ,style: myTextStyle,),
          Text("Spe : ${doctor.spe}",style: myTextStyle),
          Text("Mobile : ${doctor.mobile}",style: myTextStyle),
          Text("Timing : ${doctor.clinicTime}",style: myTextStyle),
          Text("Address : ${doctor.clinicAddress}",style: myTextStyle),
          Text("Fee : ${doctor.fee}",style: myTextStyle),
        ],
      ),
    );
  }
}
