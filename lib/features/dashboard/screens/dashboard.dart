import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todozen/features/notification/screens/notification.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          actions: [
            Badge(
              backgroundColor: const Color(0xFFe0aaff),
              label: const Text("2"),
              alignment: Alignment.topRight,
              offset: const Offset(-10, 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()),
                    );
                  },
                  icon: const Icon(
                    Icons.notifications_outlined,
                    size: 36.0,
                  )),
            ),
          ],
          automaticallyImplyLeading: false,
          title: Text("Dashboard",
              style: GoogleFonts.outfit(
                  fontSize: 34, fontWeight: FontWeight.w500)),
        ),
        body: const Column(
          children: [],
        ));
  }
}
