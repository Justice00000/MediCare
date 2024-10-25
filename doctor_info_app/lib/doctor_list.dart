import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  // Class name set to DoctorList
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Choose Doctor"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find your Doctor",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text("Find a doctor to help you"),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  doctorCard(
                    context,
                    "Dr. Leslie Alexander",
                    "Neurology",
                    "12 years of experience",
                    "1000+",
                    4.3,
                    "assets/doctor1.png", // Doctor image asset
                  ),
                  doctorCard(
                    context,
                    "Dr. Chester Huff",
                    "Cardiologist",
                    "9 years of experience",
                    "500+",
                    4.5,
                    "assets/doctor2.png",
                  ),
                  doctorCard(
                    context,
                    "Dr. Peter Efe",
                    "Orthopedic",
                    "7 years of experience",
                    "2600+",
                    4.5,
                    "assets/doctor3.png",
                  ),
                  doctorCard(
                    context,
                    "Dr. Iman Ali",
                    "Dentist",
                    "4 years of experience",
                    "400+",
                    4.0,
                    "assets/doctor4.png",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text("Continue"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget doctorCard(BuildContext context, String name, String specialty,
      String experience, String patients, double rating, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(specialty),
            SizedBox(height: 4),
            Text(experience),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.people, size: 16),
                SizedBox(width: 4),
                Text("$patients Patients"),
                SizedBox(width: 16),
                Icon(Icons.star, size: 16, color: Colors.yellow),
                SizedBox(width: 4),
                Text(rating.toString()),
              ],
            ),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text("View More"),
        ),
      ),
    );
  }
}
