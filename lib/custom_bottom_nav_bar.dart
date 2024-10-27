// lib/custom_bottom_nav_bar.dart

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:medicare/appointment_info.dart'; // Make sure this is the correct file with AppointmentScreen
import 'package:medicare/dashboard_screen.dart';
import 'package:medicare/reminders_screen.dart';
import 'package:medicare/profile_screen.dart';
import 'package:medicare/appointment_screen.dart'; // Import the AppointmentsScreen
import 'package:medicare/hospitals_screen.dart';
import 'package:medicare/pharmacies_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const RemindersScreen(),
    const AppointmentsScreen(), // Change this to AppointmentsScreen
    const ProfileScreen(),
    const HospitalsClinicScreen(),
    const PharmaciesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Reminders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Appointments', // Make sure this label is clear
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}