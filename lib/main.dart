import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:trade_way/splash_screen.dart';

const Color primaryColor =  Color(0xFFF5F4F1);
const Color secondaryColor = Color(0xFF000000);
const Color thirdColor = Color(0xFFe1f038);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light().copyWith(primary:primaryColor,secondary: secondaryColor ),
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: secondaryColor,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

