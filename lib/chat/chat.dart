import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:apkdemo/src/layouts/nav-bar.dart';
import 'package:apkdemo/home/home.dart';
import 'package:apkdemo/feed/feed.dart';
import 'package:apkdemo/transaction/transaction.dart';

class ChatPage extends StatefulWidget {
  @override
  ChatScreen createState() => ChatScreen();
}

class ChatScreen extends State<ChatPage> {
  int _currentIndex = 2;

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
