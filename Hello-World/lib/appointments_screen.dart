import 'package:flutter/material.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  _AppointmentsScreenState createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  bool _showUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleButtons(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Upcoming'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Past'),
                ),
              ],
              onPressed: (int index) {
                setState(() {
                  _showUpcoming = index == 0;
                });
              },
              isSelected: [_showUpcoming, !_showUpcoming],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                AppointmentCard(
                  doctorName: 'Dr. Henry Kanoiya',
                  date: 'Wed, Nov 21 2024',
                  time: '7:00 - 8:25 AM',
                ),
                AppointmentCard(
                  doctorName: 'Dr. Henry Kanoiya',
                  date: 'Wed, Nov 21 2024',
                  time: '7:00 - 8:25 AM',
                ),
                AppointmentCard(
                  doctorName: 'Dr. Henry Kanoiya',
                  date: 'Wed, Nov 21 2024',
                  time: '7:00 - 8:25 AM',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), label: 'Hospitals'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Appointments'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 2, // Set the current active tab
        onTap: (index) {
          // Handle navigation bar item taps
        },
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String doctorName;
  final String date;
  final String time;

  const AppointmentCard({
    Key? key,
    required this.doctorName,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Appointment Date',
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16),
                const SizedBox(width: 8),
                Text(date),
                const SizedBox(width: 16),
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 8),
                Text(time),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://example.com/doctor_image.jpg'),
                ),
                const SizedBox(width: 8),
                Text(
                  doctorName,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle rebook/change appointment
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, // Fixed here
                  ),
                  child: const Text('Rebook/Change Appointment'),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Handle cancel appointment
                  },
                  child: const Text('Cancel Appointment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
