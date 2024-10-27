import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  // Keeping track of selected symptoms
  List<bool> _isSelected = [false, false, false, false, false, false];
  final _problemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointment"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Symptoms",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                symptomChip("Headache", 0),
                symptomChip("Stomach ache", 1),
                symptomChip("Back pain", 2),
                symptomChip("Fever", 3),
                symptomChip("Cough and flu", 4),
                symptomChip("Other", 5),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Describe your problem",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Please describe how you feel if you picked other",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _problemController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Write your problem",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logic for the "Continue" button can be added here
                  print("Symptoms selected: ${_getSelectedSymptoms()}");
                  print("Problem description: ${_problemController.text}");
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Continue"),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
              ),
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

  // Widget for a selectable symptom chip
  Widget symptomChip(String label, int index) {
    return ChoiceChip(
      label: Text(label),
      selected: _isSelected[index],
      onSelected: (bool selected) {
        setState(() {
          _isSelected[index] = selected;
        });
      },
      selectedColor: Colors.green,
      backgroundColor: Colors.grey[200],
    );
  }

  // Get selected symptoms
  List<String> _getSelectedSymptoms() {
    List<String> symptoms = [
      "Headache",
      "Stomach ache",
      "Back pain",
      "Fever",
      "Cough and flu",
      "Other"
    ];

    List<String> selectedSymptoms = [];
    for (int i = 0; i < _isSelected.length; i++) {
      if (_isSelected[i]) {
        selectedSymptoms.add(symptoms[i]);
      }
    }

    return selectedSymptoms;
  }
}
