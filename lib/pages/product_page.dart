import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Solutions")),
      body: const Center(
        child: Text(
          "Solutions Page Coming Soon",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}