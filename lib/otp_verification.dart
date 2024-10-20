// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  late Timer _timer;
  int _start = 120; // 2 minutes timer
  double _opacity = 0.0; // Initial opacity

  @override
  void initState() {
    super.initState();
    startTimer();
    // Fade in effect
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0; // Fully visible after delay
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    otpController1.dispose();
    otpController2.dispose();
    otpController3.dispose();
    otpController4.dispose();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  String get timerText {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Fade-out effect before going back
            setState(() {
              _opacity = 0.0; // Start fading out
            });
            Future.delayed(const Duration(milliseconds: 300), () {
              Navigator.of(context).pop();
            });
          },
        ),
        title: const Text(
          'OTP Verification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 300),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image placeholder (Replace with actual asset)
              Image.asset(
                'assets/images/verify_email-removebg-preview 1 (1).png', // Replace with your image path
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Enter the 4-digit code sent via the email *****@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              // OTP input fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _otpTextField(otpController1),
                  _otpTextField(otpController2),
                  _otpTextField(otpController3),
                  _otpTextField(otpController4),
                ],
              ),
              const SizedBox(height: 20),
              // Resend and Timer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't recieve a code? "),
                  GestureDetector(
                    // ignore: avoid_print
                    onTap: _start == 0 ? () => print('Resend OTP') : null,
                    child: Text(
                      'Re-Send',
                      style: TextStyle(
                        color: _start == 0 ? Colors.green : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    timerText,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // Handle OTP verification
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00A86B),
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build OTP input fields
  Widget _otpTextField(TextEditingController controller) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.green),
          ),
        ),
      ),
    );
  }
}