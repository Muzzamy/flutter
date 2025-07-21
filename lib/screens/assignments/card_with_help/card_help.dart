import 'package:flutter/material.dart';
import 'package:practice/screens/assignments/card_with_help/custom_widget_of_data.dart';

class CardHelp extends StatelessWidget {
  const CardHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, color: Colors.black),
            ),
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.search, color: Colors.black),
            ),
            const Spacer(),
            const Icon(Icons.arrow_back_outlined, color: Colors.blue),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Utility Bills",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    icon: const Icon(Icons.add, color: Colors.blue),
                    label: const Text("Add"),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // First Card
              billCard(
                icon: Icons.wifi,
                gradientColors: [Colors.indigo, Colors.pink],
                title: "Wify Bill",
                reference: "07262230050892",
                company: "WIFY",
                isPayable: false,
                dueDate: "14",
                dueMonth: "Aug",
                dueYear: "2025",
                amount: "12000",
              ),

              const SizedBox(height: 20),

              // Second Card
              billCard(
                icon: Icons.fireplace_outlined,
                gradientColors: [Colors.orange, Colors.pink],
                title: "MUZAMMIL LATIF",
                reference: "13817728242",
                company: "ELECTRICITY",
                isPayable: false,
                dueDate: "4",
                dueMonth: "July",
                dueYear: "2024",
                amount: "15002",
              ),
              billCard(
                icon: Icons.fireplace_outlined,
                gradientColors: [Colors.orange, Colors.pink],
                title: "MUZAMMIL LATIF",
                reference: "13817728242",
                company: "ELECTRICITY",
                isPayable: false,
                dueDate: "4",
                dueMonth: "July",
                dueYear: "2024",
                amount: "15002",
              ),

              const SizedBox(height: 30),

              // Bottom Navigation
              BottomNavigationBar(
                currentIndex: 1,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.black,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_balance_wallet),
                      label: "Accounts"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.swap_horiz), label: "Payments"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_repair_service), label: "Services"),
                ],
              ),
            ],

          ),
        ),
      ),

    );
  }
}