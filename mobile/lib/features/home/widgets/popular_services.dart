import 'package:flutter/material.dart';

import 'package:mobile/features/home/models/service_data.dart';
import 'package:mobile/shared/widgets/service_card.dart';
import 'package:mobile/shared/widgets/section_header.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SectionHeader(
        title: "Popular Services",
      ),

        const SizedBox(height: 18),

        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];

              return ServiceCard(
                icon: service.icon,
                title: service.title,
              );
            },
          ),
        ),
      ],
    );
  }
}