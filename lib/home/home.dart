import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:apkdemo/profile/profile.dart';
import 'package:apkdemo/src/layouts/nav-bar.dart';
import 'package:apkdemo/feed/feed.dart';
import 'package:apkdemo/chat/chat.dart';
import 'package:apkdemo/transaction/transaction.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FeedPage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TransactionPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Home Screen'),
      //   ),
      backgroundColor: const Color.fromARGB(238, 0, 0, 0),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Assets/Images/bg_login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 34.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 35,
                    color: Colors.white,
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
                        style: GoogleFonts.balooDa2(
                            fontSize: 12, color: Colors.white),
                      ),
                      Text(
                        'Bandung',
                        style: GoogleFonts.balooDa2(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Bagian yang scrollable
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, top: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Organized',
                              style: GoogleFonts.balooDa2(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('lib/Assets/Images/News_w.png',
                                      width: 55, height: 55),
                                  SizedBox(height: 5),
                                  Text('News',
                                      style: GoogleFonts.balooDa2(
                                          fontSize: 15, color: Colors.white))
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('lib/Assets/Images/Event_w.png',
                                        width: 55, height: 55),
                                    SizedBox(height: 5),
                                    Text('Event',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ])
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Categorize',
                              style: GoogleFonts.balooDa2(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('lib/Assets/Images/Apparel.png',
                                      width: 55, height: 55),
                                  SizedBox(height: 5),
                                  Text('Apparel',
                                      style: GoogleFonts.balooDa2(
                                          fontSize: 15, color: Colors.white))
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/Assets/Images/Otomotif_w.png',
                                        width: 55,
                                        height: 55),
                                    SizedBox(height: 5),
                                    Text('Otomotif',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ]),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/Assets/Images/Service_w.png',
                                        width: 55,
                                        height: 55),
                                    SizedBox(height: 5),
                                    Text('Service',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ]),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/Assets/Images/Trains_w.png',
                                        width: 55,
                                        height: 55),
                                    SizedBox(height: 5),
                                    Text('Trains',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ]),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/Assets/Images/Flights_w.png',
                                        width: 55,
                                        height: 55),
                                    SizedBox(height: 5),
                                    Text('Flights',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ]),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('lib/Assets/Images/Villa_w.png',
                                        width: 55, height: 55),
                                    SizedBox(height: 5),
                                    Text('Villa',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ]),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/Assets/Images/Resort_w.png',
                                        width: 55,
                                        height: 55),
                                    SizedBox(height: 5),
                                    Text('Resort',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ]),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('lib/Assets/Images/Hotel_w.png',
                                      width: 55, height: 55),
                                  SizedBox(height: 5),
                                  Text('Hotel',
                                      style: GoogleFonts.balooDa2(
                                          fontSize: 15, color: Colors.white))
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('lib/Assets/Images/More_w.png',
                                        width: 55, height: 55),
                                    SizedBox(height: 5),
                                    Text('More',
                                        style: GoogleFonts.balooDa2(
                                            fontSize: 15, color: Colors.white))
                                  ])
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
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
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ]),
                              SizedBox(width: 190),
                              Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Text('See All  >',
                                        style:
                                            GoogleFonts.balooDa2(fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(50, 40),
                                      backgroundColor:
                                          Color.fromARGB(108, 107, 107, 100),
                                      foregroundColor:
                                          Color.fromARGB(248, 255, 255, 255),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Container(
                    margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'lib/Assets/Images/news (3).png',
                            width: 300,
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBarNew(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
