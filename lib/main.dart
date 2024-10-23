import 'package:flutter/material.dart';
import 'appointment_info.dart';
import 'payment_method.dart';
import 'add_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const AppointmentInfo(),
        '/second': (context) => const PaymentMethod(),
        '/third': (context) => const AddCard(),
      },
    );
  }
}
