import 'package:flutter/material.dart';
import 'doctor_list.dart'; // Import the doctor_list.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorList(), // Use the DoctorList class
    );
  }
}
