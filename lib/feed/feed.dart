import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:apkdemo/src/layouts/nav-bar.dart';
import 'package:apkdemo/home/home.dart';
import 'package:apkdemo/chat/chat.dart';
import 'package:apkdemo/transaction/transaction.dart';

class FeedPage extends StatefulWidget {
  @override
  FeedScreen createState() => FeedScreen();
}

class FeedScreen extends State<FeedPage> {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Navigasi ke halaman yang sesuai
    if (index == 0) {
      // Navigasi ke Menu
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        // elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            "Feed",
            style: GoogleFonts.balooDa2(
                fontSize: 17,
                // fontWeight: bold,
                color: Color.fromARGB(248, 255, 255, 255)),
          ),
        ),
        // iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(238, 0, 0, 0),
      body: Center(
        child: Image.asset(
          'lib/Assets/Images/under_develop.png',
          width: 370,
          height: 220,
        ),
      ),
      bottomNavigationBar: NavBarNew(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
