import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 150.0, left: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Sign In",
                  style: GoogleFonts.balooDa2(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 70),
            Text("Email or Username", style: GoogleFonts.balooDa2(fontSize: 13, fontWeight: FontWeight.bold),),
            SizedBox(height: 15),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email or Username",
                ),
              ),
            ),
            SizedBox(height: 40),
            Text("Password", style: GoogleFonts.balooDa2(fontSize: 13, fontWeight: FontWeight.bold),),
            SizedBox(height: 15),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Password",
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
                width: 500,
                child: ElevatedButton(
                  onPressed: (){
                      print("Test Button Login");
                    },
                    child: Text("Login", textAlign: TextAlign.center),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 121, 107, 107),
                      foregroundColor: Color.fromARGB(248, 9, 9, 9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15)
                    ),
                  ),
            ),
            SizedBox(height: 75,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                print("text press test");
                },
                  child: Text("Forgot Password", style: GoogleFonts.balooDa2(fontSize: 13, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 121, 107, 107),),
                  ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider(thickness: 1,)),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("or",
                style: GoogleFonts.balooDa2(fontSize: 13, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 121, 107, 107)
                  ),
                 ),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an acount?", style: GoogleFonts.balooDa2(fontSize: 13, fontWeight: FontWeight.normal),),
                    TextButton(onPressed: (){
                        print("test register");
                    }, child: Text("Register",
                    style: GoogleFonts.balooDa2( fontSize: 13, color: Color.fromARGB(255, 121, 107, 107)
                    ),
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

