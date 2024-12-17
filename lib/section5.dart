import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.white, width: 2),
            bottom: BorderSide(color: Colors.white, width: 2),
          )),
          child: Text(
            textAlign: TextAlign.justify,
            "hi, I hope you're okay while read this, i know i've been such a bad boy lately, i know i can't be what you want or buy you anything you want right now, but believe me you're the most beatiful girl i've met in my life, i want to be with you till the end of my life and in every universe that maybe i life.\n\nThank you for bring new shine for my life, I Love You ❤️.",
            style: GoogleFonts.amaranth(fontSize: 16, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
            textAlign: TextAlign.center,
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.white),
            "You're my expectation\nI found what I need in you\nBut do you feel the same way\nI just hope you found me too"),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
