import 'package:apkdemo/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Home Screen'),
      //   ),
      body: Container(
        margin: EdgeInsets.only(left: 15.0, top: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfileScreen();
                    }));
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Location',
                      style: GoogleFonts.balooDa2(fontSize: 7),
                    ),
                    Text(
                      'Bandung',
                      style: GoogleFonts.balooDa2(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(left: 15.0, top: 30.0),
                child: Column(
                  children: [
                    Text('Organized',
                        style: GoogleFonts.balooDa2(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib/Assets/Images/News.png',
                              width: 40, height: 40),
                          SizedBox(height: 5),
                          Text('News',
                              style: GoogleFonts.balooDa2(fontSize: 10))
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Event.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Event',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ])
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 15.0, top: 10.0),
                child: Column(
                  children: [
                    Text('Categorize',
                        style: GoogleFonts.balooDa2(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib/Assets/Images/Apparel (1).png',
                              width: 40, height: 40),
                          SizedBox(height: 5),
                          Text('Apparel',
                              style: GoogleFonts.balooDa2(fontSize: 10))
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Otomotif.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Otomotif',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ]),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Service.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Service',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ]),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Trains.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Trains',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ]),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Flights.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Flights',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ]),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
