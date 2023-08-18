


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAPPBar extends StatelessWidget {
  const CustomBookDetailsAPPBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: Icon(Icons.close)),
        const Icon(Icons.shopping_cart_outlined)

      ],
    );
  }
}
