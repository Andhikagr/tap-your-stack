import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Popover extends StatelessWidget {
  final String message;

  const Popover({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 60,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            message,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
