import 'package:flutter/material.dart';
import 'package:scan_ai/components/download.dart';
import 'package:scan_ai/components/service.dart';
import '../components/herosection.dart';
import '../components/header.dart';
// import '../components/service.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          header(),
          herosection(),
          downloadsection(),
          services(),
        ],
      ),
    );
  }
}