import 'package:flutter/material.dart';
import 'package:car/SplashScreen.Dart';
import 'package:google_fonts/google_fonts.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Car Rental App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.muliTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
