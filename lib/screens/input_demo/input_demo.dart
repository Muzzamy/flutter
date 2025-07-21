import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InputDemo extends StatefulWidget {
  InputDemo({super.key});
  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  TextEditingController countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        foregroundColor: Colors.white,
        title: Center(
            child: Text(
          "INPUT DEMO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          fontSize: 25),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            TextField(
              controller: countryController,
              decoration: InputDecoration(
                hintText: "Country Name ",
                labelText: "COUNTRY ",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.account_balance),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "UserName",
                labelText: "NAME",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Mobile",
                labelText: "PHONE",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "PASSWORD",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(onPressed: (){},
                    icon: Icon(Icons.visibility_off))
              ),
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Comment",
                labelText: "COMMENT",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            ElevatedButton(onPressed: (){
              String countryName = countryController.text;
              // print(countryName);
              Fluttertoast.showToast(
                msg: "🇫🇷	$countryName",
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.purple[300],
                textColor: Colors.white,
              );
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
