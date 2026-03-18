import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'shared/widgets/main_nav_screen.dart';

void main() {
  runApp(
    // Wrap the entire app in a ProviderScope so Riverpod providers
    // are accessible throughout the widget tree.
    const ProviderScope(
      child: FinovaApp(),
    ),
  );
}

class FinovaApp extends StatelessWidget {
  const FinovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FINOVA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const MainNavScreen(),
    );
  }
}
