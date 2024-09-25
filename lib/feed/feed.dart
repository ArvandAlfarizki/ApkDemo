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
      body: Center(child: Text("Feed", style: TextStyle(color: Colors.white))),
      bottomNavigationBar: NavBarNew(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
