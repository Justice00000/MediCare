// ignore_for_file: unused_field

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medicare/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  final String text = "MEDICARE++";
  final Duration animationDuration = const Duration(seconds: 4);

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
    );

    // Fade and Scale animation
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation (fade-in and scale-up)
    _controller.forward();

    // After animation is completed, reverse it for fade-out
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Wait for 1 second before starting fade-out
        Future.delayed(const Duration(seconds: 1), () {
          _controller.reverse(); // Start fade-out
        });
      } else if (status == AnimationStatus.dismissed) {
        // Once fade-out is completed, navigate to the next screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WelcomeScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A86B), // Green background
      body: Center(
        child: AnimatedBuilder(
          animation: _fadeAnimation,
          builder: (context, child) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(text.length, (index) {
                final delay = index / text.length;
                final letterAnimation = CurvedAnimation(
                  parent: _fadeAnimation,
                  curve: Interval(delay, 1.0, curve: Curves.easeInOut),
                );

                return FadeTransition(
                  opacity: letterAnimation,
                  child: ScaleTransition(
                    scale: letterAnimation.drive(
                      Tween<double>(begin: 0.5, end: 1.0),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -30 * (1 - letterAnimation.value)),
                      child: Text(
                        text[index],
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}

// Define the Welcome Screen
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/doctor.png',
              height: 250,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Medicare++',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Your one-stop solution for healthcare services.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SignUpScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00A86B),
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}