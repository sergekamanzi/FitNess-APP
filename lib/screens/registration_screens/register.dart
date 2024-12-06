import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 170),
              // Title
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: 70), // Spacing after title
              // Full Name Field
              TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              SizedBox(height: 16),
              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              // Phone Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              // Privacy Policy Checkbox
              Row(
                children: [
                  Checkbox(
                    value: true, // Default unchecked
                    onChanged: (value) {
                      // Handle checkbox logic here
                    },
                  ),
                  Expanded(
                    child: Text(
                      'By continuing you accept our Privacy Policy',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Add sign-up logic
                  Navigator.pushNamed(context, '/verification');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 21),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 40), // Spacing after button
              // Sign in with text
              Center(
                child: Text(
                  'Sign in with',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              // Social Media Buttons (Google and Facebook)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle Google sign-in
                    },
                    child: Image.asset(
                      'assets/images/google.png', // Replace with actual path
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      // Handle Facebook sign-in
                    },
                    child: Image.asset(
                      'assets/images/facebook.png', // Replace with actual path
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              // Bottom Sign In Text
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Handle navigation to sign-in screen
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Don’t have an account? Sign In',
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}
