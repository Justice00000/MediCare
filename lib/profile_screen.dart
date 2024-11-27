import 'package:flutter/material.dart';
import 'package:medicare/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
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
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/avatar1.jpg'), // Replace with actual image
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle Edit Profile action
                // You can navigate to a different screen or show a dialog for editing
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: const StadiumBorder(),
              ),
              child: const Text("Edit Profile"),
            ),
            const SizedBox(height: 20),
            const ProfileInfoRow(label: "Name", value: "Joshua Alana"),
            const ProfileInfoRow(label: "Contact Number", value: "+234 782 2839"),
            const ProfileInfoRow(label: "Date of Birth", value: "15/8/2005"),
            const ProfileInfoRow(label: "Gender", value: "Male"),
            const ProfileInfoRow(label: "Email", value: "josh@gmail.com"),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}