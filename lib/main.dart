import 'package:flutter/material.dart';
import 'pages/landing_page.dart';

void main() {

  runApp(new MaterialApp(
    home: new LandingPage(),
    debugShowCheckedModeBanner: true,
    theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
  ));
}

