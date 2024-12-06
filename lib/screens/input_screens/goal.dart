import 'package:flutter/material.dart';

class GoalSelection extends StatefulWidget {
  @override
  _GoalSelectionState createState() => _GoalSelectionState();
}

class _GoalSelectionState extends State<GoalSelection> {
  // Track the selected goal
  String selectedGoal = '';

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
              Navigator.pushNamed(context, '/gender');
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
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ),
            ),
          ),
        ],
        title: Text(
          'Step 2 of 7',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Choose main goal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 32.0),
            // First goal option (Lose weight)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGoal = 'Lose weight';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGoal == 'Lose weight' ? Colors.black : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Placeholder for your custom image
                    SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: Image.asset('assets/images/weight.png'), // Add your image here
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Lose weight',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Second goal option (Keep fit)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGoal = 'Keep fit';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGoal == 'Keep fit' ? Colors.black : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Placeholder for your custom image
                    SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: Image.asset('assets/images/fit.png'), // Add your image here
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Keep fit',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Third goal option (Get stronger)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGoal = 'Get stronger';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGoal == 'Get stronger' ? Colors.black : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Placeholder for your custom image
                    SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: Image.asset('assets/images/strong.png'), // Add your image here
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Get stronger',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Fourth goal option (Gain muscle mass)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGoal = 'Gain muscle mass';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGoal == 'Gain muscle mass' ? Colors.black : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Placeholder for your custom image
                    SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: Image.asset('assets/images/gym.png'), // Add your image here
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Gain muscle mass',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                onPressed: () {
                  // Add start training logic here
                  Navigator.pushNamed(context, '/height');
                },
                child: Text(
                  'Start Training',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 316.0),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GoalSelection(),
  ));
}
