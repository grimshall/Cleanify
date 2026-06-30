import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Clean Home.\nBetter Life.",
          style: TextStyle(
            fontSize: 46,
            fontWeight: FontWeight.bold,
            height: 1.05,
          ),
        ),

        SizedBox(height: 18),

        Text(
          "Book trusted cleaners for any\nservice, anytime.",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}