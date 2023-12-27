import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.chevron_left,
                  size: 36.0,
                )),
            Text(
              "Notifications",
              style:
                  GoogleFonts.outfit(fontSize: 34, fontWeight: FontWeight.w500),
            ),
            ListView(
              children: const [
                ListTile(
                  leading: CircleAvatar(child: Text('A')),
                  title: Text('Headline'),
                  subtitle: Text('Supporting Text'),
                  trailing: Icon(Icons.favorite),
                )
              ],
            )
          ],
        )
      ],
    )));
  }
}
