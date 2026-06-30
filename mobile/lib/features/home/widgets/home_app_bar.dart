import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.menu_rounded, size: 30),

            const SizedBox(width: 12),

            const Text(
              "Cleanify.",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),

            const Spacer(),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_rounded),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline_rounded),
            ),
          ],
        ),

        const SizedBox(height: 12),

        const Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 18,
              color: Colors.grey,
            ),
            SizedBox(width: 6),
            Text(
              "Kuala Lumpur, Malaysia",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
              size: 18,
            ),
          ],
        ),
      ],
    );
  }
}