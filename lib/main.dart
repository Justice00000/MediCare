// ignore_for_file: unused_field

import 'dart:async';
import 'package:flutter/foundation.dart'; // For checking web platform
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_web/firebase_core_web.dart'; // Required for web
import 'package:medicare/signup.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (kIsWeb) {
      // Web-specific Firebase initialization
      const firebaseConfig = FirebaseOptions(
        apiKey: "AIzaSyC548u6Wrl9ICaNr3fklLMjVKUvay7rTSs",
        authDomain: "medicare-e2d86.firebaseapp.com",
        projectId: "medicare-e2d86",
        storageBucket: "medicare-e2d86.appspot.com",
        messagingSenderId: "972867386906",
        appId: "1:972867386906:web:4f0992026fabba0eb2dba3",
        measurementId: "G-TFZFLHGXTG",
      );
      await Firebase.initializeApp(options: firebaseConfig);
    } else {
      // Default Firebase initialization for Android/iOS
      await Firebase.initializeApp();
    }

    print("🔥 Firebase initialized successfully");
  } catch (e) {
    print("❌ Firebase initialization failed: $e");
  }

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

    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
    );

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

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 1), () {
          _controller.reverse();
        });
      } else if (status == AnimationStatus.dismissed) {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const WelcomeScreen()),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A86B),
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
                  MaterialPageRoute(builder: (_) => SignUpScreen()),
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
