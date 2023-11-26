import 'package:flutter/material.dart';
import 'package:gloria/pages/home_page.dart';
import 'package:gloria/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gloria/pages/login_page.dart';

void main() {
  runApp(gloria());
}

class gloria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            //titleTextStyle: TextStyle(color: Colors.black),
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => HomePage(),
        MyRouts.homeRout: (context) => HomePage(),
        MyRouts.loginRout: (context) => Loginpage(),
      },
    );
  }
}
