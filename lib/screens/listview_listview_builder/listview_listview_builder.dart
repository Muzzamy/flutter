import 'package:flutter/material.dart';
import 'package:practice/model/doctor.dart';
import 'package:practice/screens/doctors_details/doctors_details.dart';

class ListviewListviewBuilder extends StatelessWidget {
  const ListviewListviewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    List <String> friendList = [
      "Muzammil latif",
      "uziar tahir",
      "Atif hafeez ",
      "Umair ",
      "talha",
      "huzaifa",
      "yaseen",
      "Musa",
      "Rayyan",
      "Abdur Rehman",
      "Ali jan",
      "Muzammil latif",
      "uziar tahir",
      "Atif hafeez ",
      "Umair ",
      "talha",
      "huzaifa",
      "yaseen",
      "Musa",
      "Rayyan",
      "Abdur Rehman",
      "Ali jan",
      "Muzammil latif",
      "uziar tahir",
      "Atif hafeez ",
      "Umair ",
      "talha",
      "huzaifa",
      "yaseen",
      "Musa",
      "Rayyan",
      "Abdur Rehman",
      "Ali jan",
      "Muzammil latif",
      "uziar tahir",
      "Atif hafeez ",
      "Umair ",
      "talha",
      "huzaifa",
      "yaseen",
      "Musa",
      "Rayyan",
      "Abdur Rehman",
      "Ali jan",
      "Muzammil latif",
      "uziar tahir",
      "Atif hafeez ",
      "Umair ",
      "talha",
      "huzaifa",
      "yaseen",
      "Musa",
      "Rayyan",
      "Abdur Rehman",
      "Ali jan",
    ];

    List <Doctor> doctorList = [
      Doctor(name: "Muzammil", spe: "Cardio" ,mobile: "0765432", clinicTime: "2 to 8", clinicAddress: "Wapda town",fee: "3000"),
      Doctor(name: "Uzair", spe: "Orth" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Latif", spe: "Pandic" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Asad latif", spe: "Heart" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Yasir latif", spe: "General" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Bilal latif", spe: "Progr" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "kal latif", spe: "Anesthesia" , clinicAddress: 'SaeedAbad'),
      Doctor(name: "Atif", spe: "Pharmacy" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Huzaifa", spe: "Navro" , clinicAddress: 'SaeedAbad'),
      Doctor(name: "Z latif", spe: "Nothing" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "U Latif", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Daniyal", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Wahab", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
      Doctor(name: "Wahid", spe: "Cardio" , clinicAddress: 'SaeedAbad'),
      Doctor(name: "Muzammil latif", spe: "Cardio" , mobile : "087654321", clinicAddress: 'SaeedAbad'),
    ];
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Text("ListView And ListViewBuilder",style: TextStyle(color: Colors.white,fontSize: 30,)),
      ),
      body: ListView.builder(
        itemCount: doctorList.length,
        itemBuilder: (BuildContext context , int index){
          return GestureDetector(
            onTap: (){

              Doctor doctor = doctorList[index];

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return DoctorsDetails(doctor: doctor,);
              }));
            },
            child: Card(
                child: Padding(
                padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(doctorList[index].name,
                  style: TextStyle(fontSize: 30),),

                Text(doctorList[index].spe,
                  style: TextStyle(fontSize: 30),),

                Text(doctorList[index].mobile?? "NA",
                  style: TextStyle(fontSize: 30),),

                Text(doctorList[index].clinicTime?? "NA",
                  style: TextStyle(fontSize: 30),),

                Text(doctorList[index].clinicAddress?? "NA",
                  style: TextStyle(fontSize: 30),),

                Text(doctorList[index].fee ?? "NA",
                  style: TextStyle(fontSize: 30),),
              ],
            ),
            ),
            ),
          );
        },
        
      ),
    );
  }
}