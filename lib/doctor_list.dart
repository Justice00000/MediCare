import 'package:flutter/material.dart';
import 'package:medicare/custom_bottom_nav_bar.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the CustomBottomNavBar (your home screen)
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CustomBottomNavBar()),
            );
          },
        ),
        title: const Text("Choose Doctor"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find your Doctor",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("Find a doctor to help you"),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return doctorCard(
                        context,
                        "Dr. Leslie Alexander",
                        "Neurology",
                        "12 years of experience",
                        "1000+",
                        4.3,
                        "assets/images/Rectangle 7.png",
                      );
                    case 1:
                      return doctorCard(
                        context,
                        "Dr. Chester Huff",
                        "Cardiologist",
                        "9 years of experience",
                        "500+",
                        4.5,
                        "assets/images/Rectangle 7 (1).png",
                      );
                    case 2:
                      return doctorCard(
                        context,
                        "Dr. Peter Efe",
                        "Orthopedic",
                        "7 years of experience",
                        "2600+",
                        4.5,
                        "assets/images/Rectangle 7.png",
                      );
                    case 3:
                      return doctorCard(
                        context,
                        "Dr. Iman Ali",
                        "Dentist",
                        "4 years of experience",
                        "400+",
                        4.0,
                        "assets/images/Rectangle 7 (1).png",
                      );
                    default:
                      return SizedBox.shrink(); 
                  }
                },
              ),
              const SizedBox(height: 16),
              Center( // Center the button
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
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
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(specialty),
            const SizedBox(height: 4),
            Text(experience),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.people, size: 16),
                const SizedBox(width: 4),
                Text("$patients Patients"),
                const SizedBox(width: 16),
                const Icon(Icons.star, size: 16, color: Colors.yellow),
                const SizedBox(width: 4),
                Text(rating.toString()),
              ],
            ),
          ],
        ),
        trailing: SizedBox( // Set a specific width for the trailing button
          width: 100, // Adjust width as needed
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("View More"),
          ),
        ),
      ),
    );
  }
}