import 'package:flutter/material.dart';

import 'package:mobile/shared/widgets/section_header.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(
          title: "How It Works",
        ),

        const SizedBox(height: 20),

        Row(
          children: const [
            Expanded(
              child: StepCard(
                number: "1",
                title: "Choose\nService",
                icon: Icons.cleaning_services_outlined,
              ),
            ),

            Icon(Icons.arrow_forward_ios_rounded,
                color: Colors.grey, size: 18),

            Expanded(
              child: StepCard(
                number: "2",
                title: "Pick\nCleaner",
                icon: Icons.person_outline_rounded,
              ),
            ),

            Icon(Icons.arrow_forward_ios_rounded,
                color: Colors.grey, size: 18),

            Expanded(
              child: StepCard(
                number: "3",
                title: "Relax\nat Home",
                icon: Icons.home_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StepCard extends StatelessWidget {
  final String number;
  final String title;
  final IconData icon;

  const StepCard({
    super.key,
    required this.number,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFEAEAEA),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Icon(
            icon,
            size: 34,
          ),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}