import 'package:flutter/material.dart';

class aboutsection extends StatelessWidget {
  const aboutsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Content
        Container(
          color: Colors.grey[100],
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO SCANAI",
                style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "A Great Place to Receive Care",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Quisque placerat scelerisque tortor ornare ornare. "
                "Convallis felis vitae tortor augue. Velit nascetur proin massa in.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Learn More",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Bottom Image (full width)
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/bg4.jpg", // make sure this exists in assets
             width: 400, // full width
              height: 300,            // fix height
              //fit: BoxFit.cover,      // fill container and crop excess
          ),
        ),
      ],
    );
  }
}