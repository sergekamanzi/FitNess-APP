import 'package:flutter/material.dart';

class ActivitySelection extends StatefulWidget {
  @override
  _ActivitySelectionState createState() => _ActivitySelectionState();
}

class _ActivitySelectionState extends State<ActivitySelection> {
  // Holds the selected activity
  String? selectedActivity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
         toolbarHeight: 140, // Hide the app bar
        leading: GestureDetector(
            onTap: () {
              // Logic to go back
              Navigator.pushNamed(context, '/level');
            },
            child: Image.asset(
              'assets/images/back.png', // Replace with your image path
              height: 24, // Adjust the height
              width: 24,  // Adjust the width
            ),
          ),
        actions: [
          TextButton(
            onPressed: () {
              // Logic for "Skip"
            },
            child: Text(
              'Skip',
              style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.black
                  ),
            ),
          ),
        ],
        title: Text(
          'Step 6 of 7',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Choose activities of interest',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 32.0),
            // List of activity options
            _buildActivityOption('Stretch', 'assets/images/stretch.png'),
            _buildActivityOption('Cardio', 'assets/images/run.png'),
            _buildActivityOption('Yoga', 'assets/images/yoga.png'),
            _buildActivityOption('Power training', 'assets/images/power.png'),
            _buildActivityOption('Dancing', 'assets/images/dance.png'),
            Spacer(),
            // Continue button
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 10, 10, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                onPressed: selectedActivity != null
                    ? () {
                        // Logic for "Continue" button
                      }
                    : null,
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 196.0),
          ],
        ),
      ),
    );
  }

  // Helper function to create each activity option
  Widget _buildActivityOption(String activityName, String imagePath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedActivity = activityName;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedActivity == activityName
                ? Colors.black
                : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            // Placeholder for activity image (replace with your own image)
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(width: 16.0),
            // Activity name
            Expanded(
              child: Text(
                activityName,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            // Radio button
            Radio<String>(
              value: activityName,
              groupValue: selectedActivity,
              onChanged: (String? value) {
                setState(() {
                  selectedActivity = value;
                });
              },
              activeColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ActivitySelection(),
  ));
}
