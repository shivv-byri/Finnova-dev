import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:finnova/main.dart';

void main() {
  testWidgets('App renders MainNavScreen with bottom navigation bar',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: FinovaApp(),
      ),
    );

    // Bottom navigation bar with 5 destinations should be present.
    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Expenses'), findsOneWidget);
    expect(find.text('AI Chat'), findsOneWidget);
    expect(find.text('Goals'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
