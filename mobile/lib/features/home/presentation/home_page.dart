import 'package:flutter/material.dart';

import '../widgets/hero_section.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/popular_services.dart';
import '../widgets/how_it_works.dart';
import '../widgets/top_cleaners.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeAppBar(),

              SizedBox(height: 32),

              HeroSection(),

              SizedBox(height: 28),

              SearchBarWidget(),

              SizedBox(height: 36),

              PopularServices(),

              SizedBox(height: 36),

              HowItWorks(),

              SizedBox(height: 36),

              TopCleaners(),
            ],
          ),
        ),
      ),
    );
  }
}