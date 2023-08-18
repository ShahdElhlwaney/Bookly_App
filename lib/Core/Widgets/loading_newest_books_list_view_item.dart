



import 'package:flutter/material.dart';

import 'custom_loading_image_newest_book.dart';
import 'horizontal_line.dart';

class LoadingNewestListViewItem extends StatelessWidget {
  const LoadingNewestListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLoadingImageNewestBook(),
        SizedBox(width: 18,),
        Expanded(
          child: Column(
            children: [
              HorizontalLine(),
              HorizontalLine(),
              HorizontalLine()
            ],
          ),
        )
      ],
    );
  }
}
