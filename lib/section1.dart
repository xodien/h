import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section1 extends StatefulWidget {
  const Section1({super.key});

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
        ),
        Text(
          "Happy Birthday ✨",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage("assets/cat_1.jpg"), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            "Happy Birthday Babe ❤️, Wish you all the best, i hope you achieve all your dream and always be happy.\n You've been through a lot this year but remember 'Every calamity you get is blessing, believe you will bloom in time'",
            style: GoogleFonts.playfair(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
