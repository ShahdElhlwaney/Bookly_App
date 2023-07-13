

import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
    const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,//make the width the largest available width
      children: [
        Image.asset("images/logo.png",fit: BoxFit.fill),
        const SizedBox(height: 6,),
        const Text('Read Free Books',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
