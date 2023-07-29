import 'package:flutter/material.dart';

import '../../../../../Core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.1/4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.test_image))
        ),
      ),
    );
  }
}