import 'package:flutter/material.dart';
import 'navbar.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Bar
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo / Title
              const Text(
                "ScanAI",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              // Icons
              Row(
                children: const [
                  Icon(Icons.person, size: 28),
                  SizedBox(width: 15),
                  Icon(Icons.menu, size: 28),
                ],
              )
            ],
          ),
        ),

        // Navbar (your custom widget)
        const navbar(),
      ],
    );
  }
}