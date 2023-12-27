import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Settings",
                style: GoogleFonts.outfit(
                    fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ]));
  }
}
