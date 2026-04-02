import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top Section
          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 768;

              return Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: isMobile
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  // Logo + Description
                  SizedBox(
                    width: isMobile ? double.infinity : 300,
                    child: Column(
                      crossAxisAlignment: isMobile
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "ScanAI",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Explore the world's hidden treasures, waiting to be discovered with us.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Links Section
                  Wrap(
                    spacing: 50,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      footerColumn(
                        "Quick Links",
                        ["Home", "Contact Us", "About Us"],
                      ),
                      footerColumn(
                        "Support",
                        [
                          "Help Center",
                          "Anti-discrimination",
                          "Disability Support",
                          "Cancellation Options",
                          "Report Concern"
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 30),

          // Divider
          Container(
            height: 1,
            color: Colors.grey[700],
          ),

          const SizedBox(height: 20),

          // Bottom Section
          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 768;

              return Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "© 2025 ScanAI. All Rights Reserved",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 20,
                    children: [
                      footerLink("Privacy Policy"),
                      footerLink("Terms of Service"),
                      footerLink("Manage Cookies"),
                    ],
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 60),

          // Background Text at END
          Text(
            "SCANAI",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.08),
              fontSize: MediaQuery.of(context).size.width < 600 ? 80 : 180,
              fontWeight: FontWeight.w900,
              letterSpacing: 5,
            ),
          ),
        ],
      ),
    );
  }

  // Footer Column (Quick Links / Support)
  static Widget footerColumn(String title, List<String> links) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        ...links.map(
          (link) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              link,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Footer links in bottom section
  static Widget footerLink(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 12,
      ),
    );
  }
}