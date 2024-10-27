import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // White background for the AppBar
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            backgroundColor: Colors.white,
            color: Colors.black, // Black text color to contrast the white background
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/verify_email-removebg-preview 1.png', // Add your image asset here
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Verify Email',
              style: TextStyle(
                backgroundColor: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter your email or number then we will send you a code to reset your password.',
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Colors.white,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Email input field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Send button
            ElevatedButton(
              onPressed: () {
                // Handle send button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00A86B),
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}