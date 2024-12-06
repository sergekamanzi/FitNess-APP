import 'package:flutter/material.dart';

class HeightSelection extends StatefulWidget {
  @override
  _HeightSelectionState createState() => _HeightSelectionState();
}

class _HeightSelectionState extends State<HeightSelection> {
  // Toggle between Feet and Centimeters
  bool isCentimetreSelected = true;
  int height = 175; // Default height value

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
              Navigator.pushNamed(context, '/goal');
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
          'Step 3 of 7',
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
              'Select height',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 32.0),
            // Toggle between Feet and Centimeters
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceChip(
                  label: Text('Feet'),
                  selected: !isCentimetreSelected,
                  onSelected: (bool selected) {
                    setState(() {
                      isCentimetreSelected = !selected;
                      height = isCentimetreSelected ? 175 : 5; // Default values
                    });
                  },
                ),
                SizedBox(width: 16.0),
                ChoiceChip(
                  label: Text('Centimetre'),
                  selected: isCentimetreSelected,
                  onSelected: (bool selected) {
                    setState(() {
                      isCentimetreSelected = selected;
                      height = isCentimetreSelected ? 175 : 5; // Default values
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 32.0),
            // Height Input Display
            Container(
              alignment: Alignment.center,
              child: Text(
                '$height ${isCentimetreSelected ? 'cm' : 'ft'}',
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            // Numeric keypad
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      if (index < 9) {
                        // Numbers 1-9
                        return _buildKey(index + 1);
                      } else if (index == 9) {
                        // Blank space
                        return Container();
                      } else if (index == 10) {
                        // Number 0
                        return _buildKey(0);
                      } else {
                        // Backspace
                        return IconButton(
                          icon: Icon(Icons.backspace, size: 24.0),
                          onPressed: () {
                            setState(() {
                              height = (height ~/ 10);
                            });
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            // Continue button
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
                  // Logic for "Continue" button
                  Navigator.pushNamed(context, '/weight');
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  // Helper function to create keypad buttons
  Widget _buildKey(int num) {
    return GestureDetector(
      onTap: () {
        setState(() {
          height = int.tryParse('$height$num') ?? height;
        });
      },
      child: Center(
        child: Text(
          '$num',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HeightSelection(),
  ));
}
