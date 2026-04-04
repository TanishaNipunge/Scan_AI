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
                "Advanced Healthcare Made Accessible",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "ScanAI is dedicated to delivering advanced and reliable medical diagnostic solutions. "
                "We provide portable X-ray systems and ECG devices designed for hospitals, clinics, "
                "and home healthcare. Our solutions combine mobility, accuracy, and modern technology "
                "to enable faster and smarter medical decisions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "From high-quality digital imaging to continuous heart monitoring, we ensure our "
                "products meet global standards while remaining affordable and easy to use.",
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

       SizedBox(
          width: 800 ,
          height: 200, // control height here
          child: Image.asset(
            "assets/bg4.jpg",
            fit: BoxFit.cover, // fills width & crops nicely
          ),
         ),
      ],
    );
  }
}