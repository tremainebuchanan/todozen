import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Profile",
          style: GoogleFonts.outfit(fontSize: 34, fontWeight: FontWeight.w500),
        ),
      ),
      body: const Center(),
    );
  }
}
