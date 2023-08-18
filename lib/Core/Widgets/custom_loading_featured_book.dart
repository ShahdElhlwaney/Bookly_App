import 'package:flutter/material.dart';



class CustomLoadingFeaturedBook extends StatelessWidget {
  const CustomLoadingFeaturedBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:AspectRatio(
        aspectRatio: 3.1/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}