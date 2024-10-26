import 'package:apkdemo/home/home.dart';
import 'package:apkdemo/regis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Assets/Images/bg_login.png'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 80.0, left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Sign In",
                  style: GoogleFonts.balooDa2(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(248, 253, 253, 253),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Email or Username",
              style: GoogleFonts.balooDa2(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(248, 253, 253, 253),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(248, 253, 253, 253),
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: "Enter Email or Username",
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password",
              style: GoogleFonts.balooDa2(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(248, 253, 253, 253),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(248, 253, 253, 253),
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Password",
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Login", textAlign: TextAlign.center),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(108, 107, 107, 100),
                    foregroundColor: Color.fromARGB(248, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  print("text press test");
                },
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.balooDa2(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(248, 255, 255, 255),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "or",
                    style: GoogleFonts.balooDa2(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(248, 255, 255, 255)),
                  ),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an acount?",
                  style: GoogleFonts.balooDa2(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(248, 253, 253, 253),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisPage()),
                    );
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.balooDa2(
                        fontSize: 13, color: Color.fromARGB(255, 255, 0, 0)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
