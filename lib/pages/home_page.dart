import 'package:flutter/material.dart';
import '../components/herosection.dart';
import '../components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          header(),
          herosection(),
          SizedBox(height: 50),
          Text("Hero Section"),
          SizedBox(height: 50),
          Text("Features Section"),
        ],
      ),
    );
  }
}