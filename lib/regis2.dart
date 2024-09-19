import 'package:apkdemo/constans.dart';
import 'regis.dart';
import 'regis3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class regis2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register", style: GoogleFonts.balooDa2(fontSize: 15, fontWeight: bold, color: Color.fromARGB(248, 9, 9, 9)),),
      ),
      body: ListView(
        children: [
              Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 1, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Address Contact",
                  style: GoogleFonts.balooDa2(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(248, 9, 9, 9),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  "2 of 4",
                  style: GoogleFonts.balooDa2(
                    fontSize: 8,
                    color: Color.fromARGB(255, 121, 107, 107),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.10, left: 10,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Country",
                      style: GoogleFonts.balooDa2(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Country',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Province",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Province',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "City",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select City',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Branch Officers",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Branch Officers',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Resindence Address",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input Your Resindence Address',
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Job Type",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Job Type',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Bussiness Field",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Bussiness Field',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Company Name",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input Your Company Name',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisPage()),
                          );
                        }, 
                        child: Text("Back"),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 228, 228, 228),
                        foregroundColor: Color.fromARGB(248, 9, 9, 9),
                        minimumSize: Size(100, 40),
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
                            MaterialPageRoute(builder: (context) => regis3()),
                          );
                        }, 
                        child: Text("Next"),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 121, 107, 107),
                        foregroundColor: Color.fromARGB(248, 9, 9, 9),
                        minimumSize: Size(100, 40),
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
