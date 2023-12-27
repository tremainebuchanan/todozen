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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dashboard",
                style: GoogleFonts.outfit(
                    fontSize: 34, fontWeight: FontWeight.w500),
              ),
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
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Task Summary",
            style:
                GoogleFonts.outfit(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 2.0)),
                  color: const Color(0xFF9d4edd),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "24",
                          style: GoogleFonts.outfit(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        Text("In Progress",
                            style: GoogleFonts.outfit(
                                fontSize: 20, fontWeight: FontWeight.w300)),
                        const SizedBox(
                          height: 40.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 2.0)),
                  color: const Color(0xFFe0aaff),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "56",
                          style: GoogleFonts.outfit(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        Text("In Review",
                            style: GoogleFonts.outfit(
                                fontSize: 20, fontWeight: FontWeight.w300)),
                        const SizedBox(
                          height: 40.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 2.0)),
                  color: const Color(0xffffd166),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "16",
                          style: GoogleFonts.outfit(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        Text("On Hold",
                            style: GoogleFonts.outfit(
                                fontSize: 20, fontWeight: FontWeight.w300)),
                        const SizedBox(
                          height: 40.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 2.0)),
                  color: const Color(0xFF06d6a0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "45",
                          style: GoogleFonts.outfit(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        Text("Completed",
                            style: GoogleFonts.outfit(
                                fontSize: 20, fontWeight: FontWeight.w300)),
                        const SizedBox(
                          height: 40.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            "Task Statistics",
            style:
                GoogleFonts.outfit(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
