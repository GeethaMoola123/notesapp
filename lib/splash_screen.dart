import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notesapp/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    Timer( Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Container(
        height: 700,
        width: double.infinity,
        child: Image.asset('assets/images/notesapp.jpg'),
      ),
    );
  }
}

