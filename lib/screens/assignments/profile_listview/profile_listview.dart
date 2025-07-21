import 'package:flutter/material.dart';

class ProfileListview extends StatelessWidget {
  const ProfileListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Center(child: Text("Muzammil's Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.blue[400],
          ),
          Positioned(
            top: 100,
            left: 70,
            child:
            CircleAvatar(
              radius: 130,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("images/muzammil2.jpg"),
            ),
          ),
          Positioned(
            top: 380,
            left: 30,
            right: 30,
            child: Card(
              color: Colors.blue[800],
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  spacing: 10,
                  children: [
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("images/muzammil2.jpg"),
                        ),
                        title: Text("Muzammil Latif",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.blue[400]),
                        ),
                        subtitle: Text("Son of Latif Ur Rehman"),
                        trailing: Icon(Icons.person),
                        ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("TECHNOLOGY",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[400]),
                        ),
                        subtitle: Text("DART & FLUTTER ONLINE"),
                        trailing: Icon(Icons.work),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("Email",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[400]),
                        ),
                        subtitle: Text("muzammil@gmail.com"),
                        trailing: Icon(Icons.email),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("Mobile",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[400]),
                        ),
                        subtitle: Text("0987654321"),
                        trailing: Icon(Icons.phone),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("UNIVERSITY",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[400]),
                        ),
                        subtitle: Text("CITY UNIVERSITY OF SCIENCE AND INFORMATION TECHNOLOGY"),
                        trailing: Icon(Icons.school),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}