

import 'package:book_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(

        children: [
          CustomBookDetailsAPPBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.2),
            child: CustomBookImage.CustomBookImage(),
          ),
          const SizedBox(height: 43,),
          const Text('The Jungle Book',style: Styles.textStyle30,),
          const SizedBox(height: 6,),
           Opacity(
             opacity: .7,
             child: Text('Rudyard  Kipling',style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
          ),),
           )
        ],
      ),
    );
  }
}