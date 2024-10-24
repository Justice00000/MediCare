import 'package:flutter/material.dart';
import 'package:media_care/presentation/screens/hospitals_clinics/hospitals_crinics_screen.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/";
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(HospitalsCrinicsScreen.routeName);
                },
                child: const Text("Hospitals/Clinics")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Pharmacies"))
          ],
        ),
      ),
    );
  }
}
