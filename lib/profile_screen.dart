import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar1.jpg'), // Replace with actual image
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("Edit Profile"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, shape: StadiumBorder()),
            ),
            SizedBox(height: 20),
            ProfileInfoRow(label: "Name", value: "Joshua Alana"),
            ProfileInfoRow(label: "Contact Number", value: "+234 782 2839"),
            ProfileInfoRow(label: "Date of Birth", value: "15/8/2005"),
            ProfileInfoRow(label: "Gender", value: "Male"),
            ProfileInfoRow(label: "Email", value: "josh@gmail.com"),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String value;

  ProfileInfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(value, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
