import 'package:flutter/material.dart';
import 'custom_bottom_nav_bar.dart'; // Import the CustomBottomNavBar

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Standard back button icon
          onPressed: () {
            // Navigate to the CustomBottomNavBar (your home screen)
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CustomBottomNavBar()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today, 1 July 2024",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const Text(
              "Good Morning, Joshua",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("You've 1 appointment today"),
            const SizedBox(height: 20),
            Card(
              color: Colors.teal[100],
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/doctor.jpg'),
                ),
                title: Text("Dr. Henry Kamoiya"),
                subtitle: Text("Today, 7:00 AM"),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Medication",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MedicationCard(
                  name: "Aspirin",
                  time: "8:00 AM",
                  dosage: "1 pill",
                ),
                MedicationCard(
                  name: "Vitamin B2",
                  time: "8:00 AM",
                  dosage: "1 pill",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MedicationCard extends StatelessWidget {
  final String name;
  final String time;
  final String dosage;

  const MedicationCard({
    super.key,
    required this.name,
    required this.time,
    required this.dosage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.local_pharmacy, color: Colors.orange, size: 30),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(time),
            const SizedBox(height: 5),
            Text(dosage),
          ],
        ),
      ),
    );
  }
}