import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _navItem("About us"),
          const SizedBox(width: 30),
          _navItem("Solutions"),
          const SizedBox(width: 30),
          _navItem("Contact Us"),
        ],
      ),
    );
  }

  Widget _navItem(String text) {
    return InkWell(
      onTap: () {
        // navigation logic here
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}