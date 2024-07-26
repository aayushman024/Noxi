// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noxi/Pages/third_page.dart';

void main(){
  runApp(const SecondPage());
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff074173),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight*0.1),
              Image.asset('assets/logo.png', height: screenHeight*0.04,),
              SizedBox(height: 140),
              Text('Enter your name:',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6
              ),),
              SizedBox(height: screenHeight*0.03),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                  ),
                cursorColor: Colors.white,
                maxLength: 30,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'eg., John Doe',
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.white54
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    filled: true,
                    fillColor: Color(0xff1679AB),
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.06),
              Text('Enter your Phone Number:',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6
                ),),
              SizedBox(height: screenHeight*0.03),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),
                  cursorColor: Colors.white,
                  maxLength: 10,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'eg., 9876543210',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.white54
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    filled: true,
                    fillColor: Color(0xff1679AB),
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.2),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, CupertinoPageRoute(builder: (_) => ThirdPage()));
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
      ),
    );
  }
}
