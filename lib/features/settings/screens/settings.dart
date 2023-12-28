import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Settings",
          style: GoogleFonts.outfit(fontSize: 34, fontWeight: FontWeight.w500),
        ),
      ),
      body: const Column(),
    );
  }
}
