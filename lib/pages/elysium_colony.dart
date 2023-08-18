import 'package:flutter/material.dart';

class ElysiumColony extends StatefulWidget {
  const ElysiumColony({super.key});

  @override
  State<ElysiumColony> createState() => _ElysiumColonyState();
}

class _ElysiumColonyState extends State<ElysiumColony> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            // Image container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),

            // Description container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),

            // Duration & Rating container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),

            // Travel Path container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),

            // Climate container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),

            // Population chart container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),

            // Luggage Information container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: Container(
                height: 400,
                width: displayWidth,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 120, // Customize the container's height
            padding: EdgeInsets.all(displayWidth * .05),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(225, 255, 255, 255), // Adjust the opacity here
                  Color.fromARGB(225, 149, 216, 255), // Adjust the opacity here
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Cancer Button
                ElevatedButton(
                  onPressed: () {
                    // Handle cancer button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Change the button color to white
                    minimumSize: Size(displayWidth * .44, displayWidth * .16),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(50.0), // Add border radius
                      side: const BorderSide(
                          color: Color.fromARGB(
                              255, 0, 73, 255)), // Add border color
                    ),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 73, 255),
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w800), // Change text color to blue
                  ),
                ),

                // Book Your Tour Button (Gradient Button)
                InkWell(
                  onTap: () {
                    // Handle Book Your Tour button click
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.2), // Adjust the shadow color and opacity
                          spreadRadius: 2, // Adjust the spread radius
                          blurRadius: 4, // Adjust the blur radius
                          offset: Offset(0, 2), // Adjust the shadow offset
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 73, 255),
                          Color.fromARGB(255, 162, 221, 255),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    width: displayWidth * 0.44,
                    height: displayWidth * 0.16,
                    padding: EdgeInsets.symmetric(
                      horizontal: displayWidth * 0.1,
                      vertical: displayWidth * 0.04,
                    ),
                    child: const Center(
                      child: Text(
                        'Book Tour',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
