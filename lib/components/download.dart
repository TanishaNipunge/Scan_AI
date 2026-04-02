import 'package:flutter/material.dart';
import '../pages/download_page.dart';
class downloadsection extends StatelessWidget {
  const downloadsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 800;

          return isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _content(context, isMobile),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _content(context, isMobile),
                );
        },
      ),
    );
  }

  List<Widget> _content(BuildContext context, bool isMobile) {
    Widget textSection = Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        const Text(
          "Download Our App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Book appointments, track health & get care anytime, anywhere.",
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: const TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 20),

        // ✅ FIXED BUTTON
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DownloadPage(),
              ),
            );
          },
          child: const Text("Download Now"),
        ),
      ],
    );

    Widget imageSection = Image.asset(
      "assets/download.jpg",
      height: 200,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.image_not_supported,
            color: Colors.white, size: 80);
      },
    );

    return isMobile
        ? [
            textSection,
            const SizedBox(height: 30),
            imageSection,
          ]
        : [
            Expanded(child: textSection),
            imageSection,
          ];
  }
}