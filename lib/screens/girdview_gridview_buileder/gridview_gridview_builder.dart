import 'package:flutter/material.dart';
import 'package:practice/model/doctor.dart';
import 'package:practice/screens/doctors_details/doctors_details.dart';
class GridviewGridviewBuilder extends StatelessWidget {
  const GridviewGridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    List<Doctor> doctorsList = [
      Doctor(
        // imagePath:'https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?ga=GA1.1.52893017.1749857161&semt=ais_hybrid&w=740',
        name: "Muzammil latif",
        spe: "Cardio" ,
        mobile : "087654321",
        clinicAddress: "Wapda town",
        clinicTime: "2 to 8",
        fee: "300",),
      Doctor(name: "Uzair", spe: "Orth" , mobile : "087654321", clinicAddress: 'SaeedAbad' ),
      Doctor(name: "Latif", spe: "Pandic" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Asad latif", spe: "Heart" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Yasir latif", spe: "General" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Bilal latif", spe: "Progr" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "kal latif", spe: "Anesthesia" ,  clinicAddress: 'SaeedAbad'),
      Doctor(name: "Atif", spe: "Pharmacy" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Huzaifa", spe: "Navro" ,clinicAddress: 'SaeedAbad'),
      Doctor(name: "Z latif", spe: "Nothing" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "U Latif", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Daniyal", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Wahab", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Wahid", spe: "Cardio" , clinicAddress: 'SaeedAbad' ),
      Doctor(name: "Muzammil latif", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),

    ];

    return Scaffold(
        backgroundColor: Colors.orangeAccent[100],
        appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Center(child: Text("GridView( DOCTORS )",style: TextStyle(color: Colors.white,fontSize: 30,))),
    ),
      body: GridView.builder(
        itemCount: doctorsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context , int index){
          return InkWell(
            onTap: (){

              Doctor doctor = doctorsList[index];
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return DoctorsDetails(doctor: doctor,);
              }));
            },
            child: Card(
              color: Colors.orangeAccent[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(doctorsList[index].imagePath?? "https://www.pngplay.com/wp-content/uploads/12/User-Avatar-Profile-Transparent-Clip-Art-Background.png"),
                  ),
                  Text(doctorsList[index].name,
                    style: TextStyle(
                        fontSize: 30,color: Colors.white
                    ),
                  ),
                  // Text(doctorsList[index].spe,
                  //   style: TextStyle(
                  //       fontSize: 20,color: Colors.white
                  //   ),
                  // ),
                  // Text(doctorsList[index].mobile ?? "NA",
                  //   style: TextStyle(
                  //       fontSize: 20,color: Colors.white
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
