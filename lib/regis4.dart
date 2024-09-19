import 'package:apkdemo/constans.dart';
import 'package:apkdemo/regis3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class regis4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register", style: GoogleFonts.balooDa2(fontSize: 20, fontWeight: bold, color: Color.fromARGB(248, 9, 9, 9)),),
      ),
      body: Stack(
        children: [
              Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Membership Information",
                  style: GoogleFonts.balooDa2(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(248, 9, 9, 9),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "4 of 4",
                  style: GoogleFonts.balooDa2(
                    fontSize: 13,
                    color: Color.fromARGB(255, 121, 107, 107),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Piece Of Birth",
                      style: GoogleFonts.balooDa2(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Piece Of Birth',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Date of Birth",
                    style: GoogleFonts.balooDa2(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input your Date Birth',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Religion",
                    style: GoogleFonts.balooDa2(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select your Religion',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Blood Type",
                    style: GoogleFonts.balooDa2(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Blood Type',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Shirt Size",
                    style: GoogleFonts.balooDa2(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input Your Shirt Size',
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => regis3()),
                          );
                        }, 
                        child: Text("Back"),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 228, 228, 228),
                        foregroundColor: Color.fromARGB(248, 9, 9, 9),
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => regis4()),
                          );
                        }, 
                        child: Text("Next"),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 121, 107, 107),
                        foregroundColor: Color.fromARGB(248, 9, 9, 9),
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
