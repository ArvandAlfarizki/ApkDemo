import 'package:apkdemo/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920), // Resolusi tetap yang diinginkan
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          home: HomeScreen(),
        );
      },
    );
  }
}

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
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib/Assets/Images/Hotel.png',
                              width: 40, height: 40),
                          SizedBox(height: 5),
                          Text('Hotel',
                              style: GoogleFonts.balooDa2(fontSize: 10))
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Villa.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Villa',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ]),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/Resort.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('Resort',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ]),
                      SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/Assets/Images/More.png',
                                width: 40, height: 40),
                            SizedBox(height: 5),
                            Text('More',
                                style: GoogleFonts.balooDa2(fontSize: 10))
                          ])
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 15.0, top: 15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hot News',
                                  style: GoogleFonts.balooDa2(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ]),
                        SizedBox(width: 100),
                        Column(children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const HomeScreen();
                                }));
                              },
                              child: Text('See All  >',
                                  style: GoogleFonts.balooDa2(fontSize: 15)),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(30, 20)))
                        ]),
                      ],
                    )
                  ],
                )),
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Image.asset('lib/Assets/Images/news (3).png',
                      width: 40, height: 40),
                ])),
          ],
        ),
      ),
    );
  }
}
