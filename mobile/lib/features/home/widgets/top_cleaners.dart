import 'package:flutter/material.dart';

import 'package:mobile/features/home/models/cleaner_data.dart';
import 'package:mobile/shared/widgets/cleaner_card.dart';
import 'package:mobile/shared/widgets/section_header.dart';

class TopCleaners extends StatelessWidget {
  const TopCleaners({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: "Top Rated Cleaners",
        ),

        const SizedBox(height: 18),

        ListView.builder(
          itemCount: cleaners.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final cleaner = cleaners[index];

            return CleanerCard(
              name: cleaner.name,
              rating: cleaner.rating,
              completedJobs: cleaner.completedJobs,
              services: cleaner.services,
            );
          },
        ),
      ],
    );
  }
}