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

            // Responsive Layout
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
    // LEFT MENU
    Widget leftMenu = Container(
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _menuItem("Free Health Checkup"),
          _menuItem("Cardiology",
              bgColor: Colors.blue[900], textColor: Colors.white),
          _menuItem("Radiology (X-Ray & MRI)"),
          _menuItem("Breast Cancer Screening"),
          _menuItem("View All Services",
              bgColor: Colors.blue[900], textColor: Colors.white),
        ],
      ),
    );

    // MIDDLE CONTENT
    Widget middleContent = Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 0 : 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "A passion for putting patients first.",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),

            // Features List
            Wrap(
              spacing: 12,
              runSpacing: 10,
              children: [
                "Advanced Medical Technology",
                "Experienced Doctors",
                "24/7 Emergency Support",
                "Personalized Treatment Plans",
                "Affordable Healthcare",
                "Patient-Centered Care"
              ]
                  .map(
                    (item) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_circle,
                            color: Colors.blue[500], size: 16),
                        const SizedBox(width: 6),
                        Text(item,
                            style: TextStyle(color: Colors.grey[700])),
                      ],
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 16),

            const Text(
              "We are committed to delivering high-quality healthcare services with compassion and care. Our team of experienced professionals ensures that every patient receives the best possible treatment using modern medical technologies.",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 8),

            const Text(
              "From routine checkups to advanced diagnostics and specialized treatments, we prioritize your health and well-being at every step.",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );

    // RIGHT IMAGES
    Widget rightImages = Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            "assets/service1.jpg",
            width: 220,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            "assets/service2.jpg",
            width: 220,
            height: 150,
            fit: BoxFit.cover,
          ),
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