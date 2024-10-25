import 'package:apkdemo/constans.dart';
import 'package:apkdemo/main.dart';
import 'regis2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisPage extends StatefulWidget {
  @override
  _RegisPageState createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  String selectedMemberType = 'Anggota';
  @override
  Widget build(BuildContext context) {
    List<String> memberTypes = ['Pengurus Pusat','Ketua Capter','Pengurus Capter','Anggota','Pramember'];

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
        children: [
              Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 1, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Identity",
                  style: GoogleFonts.balooDa2(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(248, 255, 255, 255),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  "1 of 4",
                  style: GoogleFonts.balooDa2(
                    fontSize: 8,
                    color: Color.fromARGB(255, 168, 165, 165),
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
                      "Member Type",
                      style: GoogleFonts.balooDa2(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: DropdownButton<String>(
                        value: selectedMemberType,
                        isExpanded: true,
                        onChanged: (String? newValue) {
                          if (newValue != null){
                              setState(() {
                              selectedMemberType = newValue;
                            });
                          }
                        },
                        items: memberTypes
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        underline: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        style: TextStyle(color: const Color.fromARGB(255, 56, 56, 56), fontSize: 14),
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  SizedBox(height: 8),
                  Text(
                    "Email",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Email',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Username",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Username',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Password",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Password',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Confirm Password",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Confirmation Password',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Phone Number",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input Your Phone Number',
                        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Whatsapp Number",
                    style: GoogleFonts.balooDa2(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Input Your Whatsapp Number',
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
                            MaterialPageRoute(builder: (context) => MyApp()),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Regis2Page()),
                          );
                        }, 
                        child: Text("Next"),
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
            ),
          ),
        ],
      ),
      ],
      ),
    );
  }
}
