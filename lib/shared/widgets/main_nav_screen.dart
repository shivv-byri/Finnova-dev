import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/dashboard/view/dashboard_screen.dart';
import '../../features/expenses/view/expenses_screen.dart';
import '../../features/ai_chat/view/ai_chat_screen.dart';
import '../../features/goals/view/goals_screen.dart';
import '../../features/profile/view/profile_screen.dart';

/// Tracks the currently selected bottom-nav index.
final _navIndexProvider = StateProvider<int>((ref) => 0);

/// Root scaffold with the five-tab bottom navigation bar.
class MainNavScreen extends ConsumerWidget {
  const MainNavScreen({super.key});

  static const List<Widget> _screens = [
    DashboardScreen(),
    ExpensesScreen(),
    AiChatScreen(),
    GoalsScreen(),
    ProfileScreen(),
  ];

  static const List<NavigationDestination> _destinations = [
    NavigationDestination(
      icon: Icon(Icons.dashboard_outlined),
      selectedIcon: Icon(Icons.dashboard),
      label: 'Dashboard',
    ),
    NavigationDestination(
      icon: Icon(Icons.receipt_long_outlined),
      selectedIcon: Icon(Icons.receipt_long),
      label: 'Expenses',
    ),
    NavigationDestination(
      icon: Icon(Icons.auto_awesome_outlined),
      selectedIcon: Icon(Icons.auto_awesome),
      label: 'AI Chat',
    ),
    NavigationDestination(
      icon: Icon(Icons.flag_outlined),
      selectedIcon: Icon(Icons.flag),
      label: 'Goals',
    ),
    NavigationDestination(
      icon: Icon(Icons.person_outline),
      selectedIcon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(_navIndexProvider);

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          ref.read(_navIndexProvider.notifier).state = index;
        },
        destinations: _destinations,
      ),
    );
  }
}
