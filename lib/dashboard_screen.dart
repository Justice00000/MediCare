// ignore_for_file: unused_import, library_prefixes

import 'package:flutter/material.dart';
import 'package:medicare/profile.dart';
import 'package:medicare/profile_screen.dart' as profileScreenFile;
import 'package:medicare/reminders_screen.dart';
import 'package:medicare/hospitals_screen.dart'; // Import for HospitalsClinicScreen
import 'package:medicare/pharmacies_screen.dart'; // Import for PharmaciesScreen
import 'package:medicare/appointment_screen.dart'; // Import for AppointmentScreen

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.orange),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              Icon(Icons.search, color: Colors.orange),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.orange),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RemindersScreen()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Joshua Alana',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'josh@gmail.com',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.teal),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.teal),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profileScreenFile.ProfileScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.teal),
              title: const Text('Settings'),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/medicarehero.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 60),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ProfileScreen(),
                                    ),
                                  );
                                },
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome Joshua!",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "How is it going?",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 12,
                              ),
                              shape: const StadiumBorder(),
                            ),
                            child: const Text(
                              "Urgent Care",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Our Services",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ServiceIcon(
                          icon: Icons.medical_services,
                          label: "Consultation",
                        ),
                        ServiceIcon(
                          icon: Icons.local_pharmacy,
                          label: "Medicine",
                        ),
                        ServiceIcon(
                          icon: Icons.insights,
                          label: "Insights",
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _buildSectionHeader("Appointments", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AppointmentsScreen()),
                      );
                    }),
                    const AppointmentCard(),
                    const SizedBox(height: 24),
                    _buildSectionHeader("Facilities", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HospitalsClinicScreen()),
                      );
                    }),
                    const SizedBox(height: 16),
                    const FacilityList(),
                    const SizedBox(height: 24),
                    _buildSectionHeader("Pharmacies", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PharmaciesScreen()),
                      );
                    }),
                    const SizedBox(height: 16),
                    const PharmacyList(),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, VoidCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: const Text(
            "See All",
            style: TextStyle(color: Colors.teal),
          ),
        ),
      ],
    );
  }
}

class ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const ServiceIcon({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange[100],
          child: Icon(icon, color: Colors.orange, size: 30),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const ListTile(
        contentPadding: EdgeInsets.all(12),
        leading: CircleAvatar(
          radius: 25
,
          backgroundImage: AssetImage('assets/images/doctor.jpg'),
        ),
        title: Text(
          "Dr. Henry Kamoiya",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Wed, Nov 21, 7:00 - 8:25 AM"),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}

class FacilityList extends StatelessWidget {
  const FacilityList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FacilityCard(
              name: "City Hospital",
              imageUrl: "assets/images/hospital1.jpg",
            ),
            FacilityCard(
              name: "Downtown Clinic",
              imageUrl: "assets/images/hospital2.jpg",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FacilityCard(
              name: "Health Center",
              imageUrl: "assets/images/hospital1.jpg",
            ),
            FacilityCard(
              name: "Suburban Clinic",
              imageUrl: "assets/images/hospital2.jpg",
            ),
          ],
        ),
      ],
    );
  }
}

class FacilityCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const FacilityCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PharmacyList extends StatelessWidget {
  const PharmacyList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PharmacyCard(
              name: "Community Pharmacy",
              imageUrl: "assets/images/pharmacy1.jpg",
            ),
            PharmacyCard(
              name: "Wellness Pharmacy",
              imageUrl: "assets/images/pharmacy2.jpg",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PharmacyCard(
              name: "Express Pharmacy",
              imageUrl: "assets/images/pharmacy1.jpg",
            ),
            PharmacyCard(
              name: "MedPlus",
              imageUrl: "assets/images/pharmacy2.jpg",
            ),
          ],
        ),
      ],
    );
  }
}

class PharmacyCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const PharmacyCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 160, // Increased height to provide more space
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14, // Adjust font size if necessary
                ),
                overflow: TextOverflow.ellipsis, // Prevent text overflow
              ),
            ),
          ],
        ),
      ),
    );
  }
}