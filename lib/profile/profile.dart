import 'package:apkdemo/home/home.dart';
import 'package:apkdemo/profile/Menu/contactus.dart';
import 'package:apkdemo/profile/Menu/datapolicy.dart';
import 'package:apkdemo/profile/Menu/deleteaccount.dart';
import 'package:apkdemo/profile/Menu/organizationfee.dart';
import 'package:apkdemo/profile/Menu/notification.dart';
import 'package:apkdemo/login/LoginScreen.dart';
import 'package:apkdemo/profile/Menu/rateus.dart';
import 'package:apkdemo/profile/Menu/term.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; // Tambahkan import provider
import 'package:apkdemo/Assets/Themes/theme_provider.dart'; // Pastikan path ini benar sesuai dengan lokasi theme_provider.dart Anda

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment(-1.1, -0.99),
        child: RawMaterialButton(
          elevation: 0,
          shape: CircleBorder(),
          onPressed: () {
            // Pindahkan onPressed ke sini
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Container(
              height: size.height * 0.4,
              color: Colors.black,
              child: Container(
                  margin: EdgeInsets.only(top: 100, left: 60),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 13, 14, 14),
                                width: 4,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image:
                                    AssetImage('lib/Assets/Images/profil.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       SizedBox(height: 50),
                          //       Text(
                          //         'Edit Foto',
                          //         style: GoogleFonts.balooDa2(
                          //           fontSize: 12,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //     ]),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Test Nama',
                                style: GoogleFonts.balooDa2(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Kosong',
                                style: GoogleFonts.balooDa2(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Member Since 24 Juli 2024',
                                style: GoogleFonts.balooDa2(
                                    fontSize: 10,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 4, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Edit Photo',
                                  style: GoogleFonts.balooDa2(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kota Bandung',
                                style: GoogleFonts.balooDa2(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 90),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Text('Activity',
                                    style: GoogleFonts.balooDa2(fontSize: 13)),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(30, 20),
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  foregroundColor: Color.fromARGB(248, 0, 0, 0),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ))),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.only(top: 26, left: 20, right: 20),
            height: size.height * 0.65,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(32),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
              color: const Color.fromARGB(255, 124, 124, 124),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Organizationfee()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/fee.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Organization Fee",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Expanded(
                      child: Divider(
                    thickness: 1,
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/notification.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Notification",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rateus()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/rate.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Rate Us",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Term()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/term.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Term of Service",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Datapolicy()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/data.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Data Policy",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contactus()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/contact.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Contact Us",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/logout.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Log Out",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Deleteaccount()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          AssetImage('lib/Assets/Images/delete.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          " Delete Account",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage('lib/Assets/Images/panah.png'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
