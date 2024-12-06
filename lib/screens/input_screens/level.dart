import 'package:flutter/material.dart';

class LevelPage extends StatefulWidget {
  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  String selectedLevel = "Irregular training"; // Default selected level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140, // Hide the app bar
        leading: GestureDetector(
            onTap: () {
              // Logic to go back
              Navigator.pushNamed(context, '/height');
            },
            child: Image.asset(
              'assets/images/back.png', // Replace with your image path
              height: 24, // Adjust the height
              width: 24,  // Adjust the width
            ),
          ),
        title: Text(
          "Step 5 of 7",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Skip functionality
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Choose training level",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),
            Expanded(
              child: ListView(
                children: [
                  _buildLevelOption("Beginner", "I want to start training"),
                  _buildLevelOption("Irregular training", "I train 1-2 times a week"),
                  _buildLevelOption("Medium", "I train 3-5 times a week"),
                  _buildLevelOption("Advanced", "I train more than 5 times a week"),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 180.0), // Adjust the value as needed
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  onPressed: () {
                    // Continue functionality
                    Navigator.pushNamed(context, '/activity');
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )

          ],
        ),
      ),
    );
  }

  Widget _buildLevelOption(String level, String description) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLevel = level;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: selectedLevel == level ? Colors.black : Colors.grey[300]!,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              level,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
