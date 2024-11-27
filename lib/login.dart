import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signup.dart'; // Import the signup page
import 'forgot_password.dart'; // Import the Forgot Password screen
import 'profile.dart'; // Assuming this is the post-login screen

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signIn(BuildContext context) async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in all fields")),
      );
      return;
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // Navigate to the profile screen on successful login
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const ProfileScreen()),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Login failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo
              Text(
                'MEDI\nCARE++',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                  height: 1.2,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Log In Text
              const Text(
                'Log In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Email Input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Forgot Password
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 30),

              // Sign In Button
              ElevatedButton(
                onPressed: () => signIn(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00A86B),
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 20),

              // Sign Up Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SignUpScreen()),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFF00A86B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}