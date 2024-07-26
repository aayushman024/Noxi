// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noxi/Pages/firstPage.dart';
import 'package:noxi/Pages/second_page.dart';


void main() {
  runApp(const Noxi());
}

class Noxi extends StatelessWidget {
  const Noxi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Noxi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}
