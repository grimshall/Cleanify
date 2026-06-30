import 'package:flutter/material.dart';
import 'package:mobile/features/home/presentation/home_page.dart';
import 'package:mobile/core/theme/app_theme.dart';

void main() {
  runApp(const CleanifyApp());
}

class CleanifyApp extends StatelessWidget {
  const CleanifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Cleanify',
  theme: AppTheme.lightTheme,
  home: const HomePage(),
);
  }
}