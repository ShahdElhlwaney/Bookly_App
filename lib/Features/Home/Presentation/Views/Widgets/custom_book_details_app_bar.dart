


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAPPBar extends StatelessWidget {
  const CustomBookDetailsAPPBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.close),
        Icon(Icons.shopping_cart_outlined)

      ],
    );
  }
}
