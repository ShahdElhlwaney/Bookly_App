
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Core/Constants.dart';
import 'Features/Splash/Presentation/Views/splash_view.dart';
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kMainColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)

      ),
      home:const SplashView() ,

    );

  }
}
