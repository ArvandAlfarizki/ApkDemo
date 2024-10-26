import 'package:apkdemo/home/home.dart';
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 50),
                                Text(
                                  'Edit Foto',
                                  style: GoogleFonts.balooDa2(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
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
                  borderRadius: BorderRadius.circular(32), color: Colors.white),
            ))
      ]),
    );
  }
}
