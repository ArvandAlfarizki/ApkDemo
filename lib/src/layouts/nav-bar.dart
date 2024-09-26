import 'package:flutter/material.dart';

class NavBarNew extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  NavBarNew({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0), // Menambahkan padding di bawah ikon
                      child: SizedBox(
                        // `SizedBox` harus menjadi child dari `Padding`
                        width: 24,
                        height: 24,
                        child: Image.asset('lib/Assets/Images/icon_home_w.png'),
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0), // Menambahkan padding di bawah ikon
                      child: SizedBox(
                        // `SizedBox` harus menjadi child dari `Padding`
                        width: 24,
                        height: 24,
                        child: Image.asset('lib/Assets/Images/icon_feed_w.png'),
                      ),
                    ),
                    label: 'Feed',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0), // Menambahkan padding di bawah ikon
                      child: SizedBox(
                        // `SizedBox` harus menjadi child dari `Padding`
                        width: 24,
                        height: 24,
                        child: Image.asset('lib/Assets/Images/icon_chat_w.png'),
                      ),
                    ),
                    label: 'Chat',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0), // Menambahkan padding di bawah ikon
                      child: SizedBox(
                        // `SizedBox` harus menjadi child dari `Padding`
                        width: 24,
                        height: 24,
                        child: Image.asset(
                            'lib/Assets/Images/icon_transaction_w.png'),
                      ),
                    ),
                    label: 'Transaction',
                  ),
                ],
                currentIndex: currentIndex,
                selectedItemColor: Color.fromARGB(255, 255, 255, 255),
                unselectedItemColor: Color(0xFF968B8B),
                onTap: onTap,
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width / 4) * currentIndex +
                  (MediaQuery.of(context).size.width / 8) -
                  (40 / 2) +
                  (24 / 16),
              top: 8,
              child: Container(
                width: 40, // Lebar garis
                height: 4, // Tinggi garis
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ],
        ));
  }
}
