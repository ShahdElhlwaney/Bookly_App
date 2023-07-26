

import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const CustomListViewItem();
          }),
    );
  }
}