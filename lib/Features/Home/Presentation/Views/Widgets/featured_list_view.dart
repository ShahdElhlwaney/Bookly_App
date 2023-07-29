

import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const CustomBookImage();
          }),
    );
  }
}