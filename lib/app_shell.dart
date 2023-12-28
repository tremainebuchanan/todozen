import 'package:flutter/material.dart';
import 'package:todozen/features/dashboard/screens/dashboard.dart';
import 'package:todozen/features/profile/screens/profile.dart';
import 'package:todozen/features/settings/screens/settings.dart';
import 'package:todozen/features/tasks/screens/task_list.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

//TODO remove scaffold widget from tree
class _AppShellState extends State<AppShell> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: <Widget>[
        const DashboardScreen(),
        const TaskListScreen(),
        const ProfileScreen(),
        const Settings()
      ][currentPageIndex]),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          NavigationDestination(
              icon: Icon(Icons.check_circle_outline_outlined), label: "Tasks"),
          NavigationDestination(
              icon: Icon(Icons.account_circle_outlined), label: "Profile"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
