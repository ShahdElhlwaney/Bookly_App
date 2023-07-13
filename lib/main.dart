
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Core/Constants.dart';
import 'Features/Presentation/Views/splash_view.dart';
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme:ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kMainColor
      ),
      home:SplashView() ,

    );

  }
}
