import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:practice/screens/student_dmc/custom_tf_for_dmc.dart';

class StudentDmc extends StatefulWidget {
  const StudentDmc({super.key});

  @override
  State<StudentDmc> createState() => _StudentDmcState();
}

class _StudentDmcState extends State<StudentDmc> {
  var engC = TextEditingController();
  var urduC = TextEditingController();
  var mathC = TextEditingController();
  var islamC = TextEditingController();
  var psC = TextEditingController();

  int obtainedMarks = 0;
  String grade = '';
  double percentage = 0;

  void calculateMarks() {
    setState(() {
      obtainedMarks = (int.tryParse(engC.text) ?? 0) +
          (int.tryParse(urduC.text) ?? 0) +
          (int.tryParse(mathC.text) ?? 0) +
          (int.tryParse(islamC.text) ?? 0) +
          (int.tryParse(psC.text) ?? 0);

      percentage = (obtainedMarks / 500) * 100;

      if (obtainedMarks >= 400) {
        grade = 'A';
      } else if (obtainedMarks >= 350) {
        grade = 'B';
      } else if (obtainedMarks >= 300) {
        grade = 'C';
      } else if (obtainedMarks >= 250) {
        grade = 'D';
      } else if (obtainedMarks >= 200) {
        grade = 'E';
      } else {
        grade = 'FAIL';
      }
    });
  }

  void clearFields() {
    engC.clear();
    urduC.clear();
    mathC.clear();
    islamC.clear();
    psC.clear();
    setState(() {
      obtainedMarks = 0;
      percentage = 0;
      grade = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0), // Light orange background
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCC80), // Soft orange
        elevation: 2,
        title: const Center(
          child: Text(
            "STUDENT DMC",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Gap(15),
            CustomTfForDmc(
              hintText: "ENGLISH MARKS",
              labelText: "ENGLISH",
              maxDigit: 3,
              ranController: engC,
            ),
            const Gap(15),
            CustomTfForDmc(
              hintText: "URDU MARKS",
              labelText: "URDU",
              maxDigit: 3,
              ranController: urduC,
            ),
            const Gap(15),
            CustomTfForDmc(
              hintText: "MATHS MARKS",
              labelText: "MATHS",
              maxDigit: 3,
              ranController: mathC,
            ),
            const Gap(15),
            CustomTfForDmc(
              hintText: "ISLAMIYAT MARKS",
              labelText: "ISLAMIYAT",
              maxDigit: 3,
              ranController: islamC,
            ),
            const Gap(15),
            CustomTfForDmc(
              hintText: "PAK STUDY MARKS",
              labelText: "PAK STUDY",
              maxDigit: 3,
              ranController: psC,
            ),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calculateMarks,
                  child: const Text(
                    "CALCULATE",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: clearFields,
                  child: const Text(
                    "CLEAR",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
            const Gap(15),
            const Text(
              "TOTAL MARKS = 500",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Gap(15),
            Text(
              "OBTAINED MARKS = $obtainedMarks",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Gap(15),
            Text(
              "PERCENTAGE = ${percentage.toStringAsFixed(2)}%",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Gap(15),
            Text(
              "GRADE = $grade",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
