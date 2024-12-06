import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  String selectedUnit = "Kilogram"; // Default unit
  int weight = 74; // Default weight value

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
          "Step 4 of 7",
          style: TextStyle(
            color: Colors.black,
          ),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select weight",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(
                      label: Text("Pound"),
                      selected: selectedUnit == "Pound",
                      onSelected: (bool selected) {
                        setState(() {
                          selectedUnit = "Pound";
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    ChoiceChip(
                      label: Text("Kilogram"),
                      selected: selectedUnit == "Kilogram",
                      onSelected: (bool selected) {
                        setState(() {
                          selectedUnit = "Kilogram";
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$weight",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        selectedUnit == "Kilogram" ? " kg" : " lb",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  onPressed: () {
                    // Continue functionality
                    Navigator.pushNamed(context, '/level');
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.grey[200],
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2,
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    if (index < 9) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            weight = weight * 10 + (index + 1);
                          });
                        },
                        child: Center(
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                    } else if (index == 9) {
                      return SizedBox.shrink(); // Empty space
                    } else if (index == 10) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            weight = weight * 10;
                          });
                        },
                        child: Center(
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            weight = (weight / 10).floor();
                          });
                        },
                        child: Icon(Icons.backspace),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
