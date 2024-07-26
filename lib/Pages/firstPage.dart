// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noxi/Pages/second_page.dart';

void main(){
  runApp(const FirstPage());
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff074173),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight*0.08),
            Image.asset('assets/logo.png', height: screenHeight*0.04,),
            Padding(
              padding: const EdgeInsets.only(top: 90, bottom: 25),
              child: Image.asset('assets/first.png', height: screenHeight*0.29,),
            ),
            Text('Booking the Nokia Shuttle, now at\nyour fingertips!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.4,
            ),),
            SizedBox(height: screenHeight*0.16),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => SecondPage()));
                });
              },
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(70, 15, 70, 15)),
                  backgroundColor: WidgetStatePropertyAll
                    (Color(0xff0A0908)),
              shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(15))))),
              child: Text('Continue',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 0.7
              ),),
            )
          ],
        ),
      ),
    );
  }
}