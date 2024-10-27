import 'package:flutter/material.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor\'s Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor's image and name section
            const Row(
              children: [
                // Doctor's Image (Placeholder for now)
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/doctor_image.png'), // Replace with your image path
                ),
                SizedBox(width: 16),
                // Doctor's Name and Info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Leslie Alexander',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Neurology, 12 years of experience',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Text('4.3'),
                        SizedBox(width: 16),
                        Text('Patients: 1000+'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Specialization section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildSpecializationChip('Neurology'),
                const SizedBox(width: 8),
                _buildSpecializationChip('Dentist'),
                const SizedBox(width: 8),
                _buildSpecializationChip('Skin Diseases'),
              ],
            ),
            const SizedBox(height: 16),
            // About Section
            const Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Dr. Leslie Alexander is an experienced neurologist...'
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Appointment time section
            const Text(
              'Available Time',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Time selection buttons (as an example)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTimeButton('10:00 AM'),
                _buildTimeButton('2:00 PM'),
                _buildTimeButton('3:00 PM'),
                _buildTimeButton('4:00 PM'),
              ],
            ),
            const Spacer(),
            // Book Appointment Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle booking logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: const Text('Book Appointment'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Specialization Chip Widget
  Widget _buildSpecializationChip(String specialization) {
    return Chip(
      label: Text(specialization),
      backgroundColor: Colors.teal.shade100,
      padding: const EdgeInsets.all(8.0),
    );
  }

  // Time Button Widget
  Widget _buildTimeButton(String time) {
    return OutlinedButton(
      onPressed: () {
        // Handle time selection logic here
      },
      child: Text(time),
    );
  }
}