import 'package:flutter/material.dart';
import 'package:myapp/section1.dart';
import 'package:myapp/section2.dart';
import 'package:myapp/section3.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"), fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [Section1(), Section2(), Section3()],
            ),
          ),
        ],
      ),
    );
  }
}
