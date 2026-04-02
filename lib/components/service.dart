import 'package:flutter/material.dart';

class services extends StatelessWidget {
  const services({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Heading
            Column(
              children: [
                Text(
                  "CARE YOU CAN BELIEVE IN",
                  style: TextStyle(
                    color: Colors.blue[600],
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Our Services",
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Main Grid
            LayoutBuilder(builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 800;
              return isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildContent(context, isMobile),
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildContent(context, isMobile),
                    );
            }),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context, bool isMobile) {
    // Left Side Menu
    Widget leftMenu = Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _menuItem("Free Checkup"),
          _menuItem("Cardiogram", bgColor: Colors.blue[900], textColor: Colors.white),
          _menuItem("X-Ray"),
          _menuItem("Breast Cancer"),
          _menuItem("View All", bgColor: Colors.blue[900], textColor: Colors.white),
        ],
      ),
    );

    // Middle Content
    Widget middleContent = Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A passion for putting patients first.",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                "A Passion for Healing",
                "5-Star Care",
                "All our best",
                "Believe in Us",
                "A Legacy of Excellence",
                "Always Caring"
              ]
                  .map((item) => Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.blue[500],
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(item, style: TextStyle(color: Colors.grey[700])),
                        ],
                      ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat scelerisque tortor ornare ornare. Convallis felis vitae tortor augue.",
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat scelerisque tortor ornare ornare.",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );

    // Right Images
    Widget rightImages = Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset("assets/service1.jpg", width: 200, height: 150, fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset("assets/service2.jpg", width: 200, height: 150, fit: BoxFit.cover),
        ),
      ],
    );

    return [
      leftMenu,
      SizedBox(width: isMobile ? 0 : 20, height: isMobile ? 20 : 0),
      middleContent,
      SizedBox(width: isMobile ? 0 : 20, height: isMobile ? 20 : 0),
      rightImages,
    ];
  }

  Widget _menuItem(String title, {Color? bgColor, Color? textColor}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: bgColor ?? Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: textColor ?? Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}