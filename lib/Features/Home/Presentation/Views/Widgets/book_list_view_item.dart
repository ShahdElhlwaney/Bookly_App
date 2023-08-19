


import 'package:book_app/Core/utils/app_router.dart';
import 'package:book_app/Features/Home/Presentation/Views/Widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../Data/Models/BookModel.dart';
import 'booking_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125
      ,child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
        },
        child: Row(
          children: [
        CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
            const SizedBox(width: 16,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.5
                      ,child:  Text(bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,//...
                    style: Styles.textStyle20,
                  )),
                  const SizedBox(height: 3,),
                   Text(bookModel.volumeInfo.authors![0]
                     ,style: Styles.textStyle14,
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,//...

                   ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('Free ',style:
                      Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),),
                     const Spacer(),
                       const BookRating(count: '0', rating: '0',)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

