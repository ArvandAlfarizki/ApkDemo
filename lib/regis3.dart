import 'package:apkdemo/constans.dart';
import 'package:apkdemo/regis2.dart';
import 'regis4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Regis3Page extends StatefulWidget {
  @override
  _Regis3PageState createState() => _Regis3PageState();
}

class _Regis3PageState extends State<Regis3Page> {
  String selectedReligion = 'Select Your Religion';
  String selectedBlood = 'Select Your Blood Type';
  @override
  Widget build(BuildContext context) {
    List<String> religion = [
      'Select Your Religion',
      'Islam',
      'Kristen',
      'Kristen Katolik',
      'Hindu',
      'Budha',
      'Khonghucu'
    ];
    List<String> blood = [
      'Select Your Blood Type',
      'A',
      'AB',
      'B',
      'O',
      'A+',
      'A-',
      'B+',
      'B-',
      'AB+',
      'AB-',
      'O+',
      'O-'
    ];
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text(
      //     "Register",
      //     style: GoogleFonts.balooDa2(
      //         fontSize: 15,
      //         fontWeight: bold,
      //         color: Color.fromARGB(248, 255, 255, 255)),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
      body: Stack(
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
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 60.0, left: 25.0),
                child: Row(
                  children: [
                    Text(
                      "Register",
                      style: GoogleFonts.balooDa2(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(248, 253, 253, 253),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 30, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Others Details",
                      style: GoogleFonts.balooDa2(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(248, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "3 of 4",
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
                  padding: const EdgeInsets.only(
                    top: 0.10,
                    left: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Piece Of Birth",
                          style: GoogleFonts.balooDa2(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 255, 255, 255),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Piece Of Birth',
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 10,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Date of Birth",
                        style: GoogleFonts.balooDa2(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(248, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Input your Date Birth',
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 10,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Religion",
                        style: GoogleFonts.balooDa2(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(248, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 350,
                        child: DropdownButton<String>(
                          value: selectedReligion,
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                selectedReligion = newValue;
                              });
                            }
                          },
                          items: religion
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
                          style: TextStyle(
                              color: const Color.fromARGB(255, 56, 56, 56),
                              fontSize: 14),
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Blood Type",
                        style: GoogleFonts.balooDa2(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(248, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 350,
                        child: DropdownButton<String>(
                          value: selectedBlood,
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                selectedBlood = newValue;
                              });
                            }
                          },
                          items: blood
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
                          style: TextStyle(
                              color: const Color.fromARGB(255, 56, 56, 56),
                              fontSize: 14),
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Shirt Size",
                        style: GoogleFonts.balooDa2(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(248, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Input Your Shirt Size',
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 10,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.0),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Regis2Page()),
                              );
                            },
                            child: Text("Back"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 228, 228, 228),
                              foregroundColor: Color.fromARGB(248, 9, 9, 9),
                              minimumSize: Size(100, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 147,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => regis4()),
                              );
                            },
                            child: Text("Next"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(123, 123, 111, 111),
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
