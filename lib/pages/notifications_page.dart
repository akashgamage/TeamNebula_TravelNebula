import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // Adding some spacing
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Navigate back when the button is pressed
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}

// Demo --------------------------
