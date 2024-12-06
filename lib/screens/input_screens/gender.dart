import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  // Variables to track the selected gender
  bool isFemaleSelected = false;
  bool isMaleSelected = false;

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
              Navigator.pushNamed(context, '/login');
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
          'Step 1 of 7',
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
            SizedBox(height: 56.0),
            Text(
              'Choose gender',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
           SizedBox(height: 32.0),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFemaleSelected = true;
                  isMaleSelected = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isFemaleSelected ? Colors.black : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/girl.png', // Replace with your female image path
                      width: 30.0,
                      height: 30.0,
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Female',
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
            GestureDetector(
              onTap: () {
                setState(() {
                  isFemaleSelected = false;
                  isMaleSelected = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isMaleSelected ? Colors.black : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/boy.png', // Replace with your male image path
                      width: 30.0,
                      height: 30.0,
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Male',
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
                  // Add continue logic here
                  Navigator.pushNamed(context, '/goal');
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 426.0),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GenderSelection(),
  ));
}
