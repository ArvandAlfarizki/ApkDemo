import 'package:apkdemo/home/home.dart';
import 'package:apkdemo/profile/profile.dart';
import 'package:apkdemo/regis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Organizationfee extends StatelessWidget {
  const Organizationfee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Organization Fee",
          style: GoogleFonts.balooDa2(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(248, 255, 255, 255)),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(238, 0, 0, 0),
      body: Center(
        child: Image.asset(
          'lib/Assets/Images/under_develop.png',
          width: 370,
          height: 220,
        ),
      ),
    );
  }
}
