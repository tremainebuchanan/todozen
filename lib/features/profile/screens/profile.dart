import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Profile",
                style: GoogleFonts.outfit(
                    fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ]));
  }
}
