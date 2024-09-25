import 'package:flutter/material.dart';

class NavBarNew extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  NavBarNew({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset('lib/Assets/Images/icon _home_.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset('lib/Assets/Images/icon _feed_.png'),
              ),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset('lib/Assets/Images/icon _chat_.png'),
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset('lib/Assets/Images/icon_transaction_.png'),
              ),
              label: 'Transaction',
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Color(0xFF968B8B),
          unselectedItemColor: Color(0xFF968B8B),
          onTap: onTap,
        ),
      ),
    );
  }
}
