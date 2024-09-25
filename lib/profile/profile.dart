import 'package:apkdemo/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Tambahkan import provider
import 'package:apkdemo/Assets/Themes/theme_provider.dart'; // Pastikan path ini benar sesuai dengan lokasi theme_provider.dart Anda

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15.0, top: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 160),
              child: Center(
                child: Column(
                  children: [
                    Text('Feature Under Development'),
                    SizedBox(height: 20),
                    // Switch untuk mengubah tema
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dark Mode: ', style: TextStyle(fontSize: 16)),
                        Switch(
                          value: themeProvider.isDarkMode,
                          onChanged: (value) {
                            themeProvider.toggleTheme(value);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
