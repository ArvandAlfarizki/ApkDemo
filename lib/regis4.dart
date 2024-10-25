import 'package:apkdemo/constans.dart';
import 'package:apkdemo/regis3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class regis4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Register", style: GoogleFonts.balooDa2(fontSize: 15, fontWeight: bold, color: Color.fromARGB(248, 255, 255, 255)),),
      ),
      body: 
      Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'lib/Assets/Images/realbg_regis.png',
            fit: BoxFit.cover,
          ),
        ),
      ListView(
        padding: EdgeInsets.all(10),
        children: [
              Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 70, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Membership Information",
                  style: GoogleFonts.balooDa2(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(248, 255, 255, 255),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  "4 of 4",
                  style: GoogleFonts.balooDa2(
                    fontSize: 8,
                    color: Color.fromARGB(255, 121, 107, 107),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Id Card Photo",
                      style: GoogleFonts.balooDa2(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(248, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 95,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 13, 14, 14),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/Images/kta.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        print("Button 1 Upload");
                      },
                      child: Text("Upload"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color.fromARGB(248, 255, 255, 255),
                        foregroundColor: const Color.fromARGB(255, 94, 93, 93),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 55)
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Driver's License Photo",
                      style: GoogleFonts.balooDa2(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(248, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 95,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 13, 14, 14),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/Images/kta.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        print("Button 2 upload");
                      },
                      child: Text("Upload"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color.fromARGB(248, 255, 255, 255),
                        foregroundColor: const Color.fromARGB(255, 94, 93, 93),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selfie Photo",
                      style: GoogleFonts.balooDa2(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(248, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 160,
                      height: 95,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 13, 14, 14),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/Images/kta.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        print("Button 2 upload");
                      },
                      child: Text("Upload"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(157, 42),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color.fromARGB(248, 255, 255, 255),
                        foregroundColor: const Color.fromARGB(255, 94, 93, 93),
                      ),
                    ),
                  ],
                ),
          ),
          SizedBox(height: 8),
                  Text(
                    "National Identity Number",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(248, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input Your National Identity Number',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Driver's License",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(248, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Select Drivers License id',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
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
                            MaterialPageRoute(builder: (context) => Regis3Page()),
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
                            MaterialPageRoute(builder: (context) => regis4()),
                          );
                        }, 
                        child: Text("Finish"),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(123, 123, 111, 111),
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
      ],
      ),
    );
  }
}
