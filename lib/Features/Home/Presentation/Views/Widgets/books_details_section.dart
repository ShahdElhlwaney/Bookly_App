


import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../../Data/Models/BookModel.dart';
import 'booking_rating.dart';
import 'button_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.book}) : super(key: key);
   final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.2),
          child:   CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail??'',),
        ),
        const SizedBox(height: 43,),
         Text(book.volumeInfo.title!
          ,style: Styles.textStyle30,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text(book.volumeInfo.authors?[0]??''
            ,style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500
            ),),
        ),
        const SizedBox(height: 15,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center, count: '0', rating: '0',),
        const SizedBox(height: 37,),
         ButtonAction(bookModel: book,),
      ],
    );
  }
}
