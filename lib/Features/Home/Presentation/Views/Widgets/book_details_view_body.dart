

<<<<<<< HEAD
import 'package:book_app/Core/utils/styles.dart';
import 'package:book_app/Features/Home/Presentation/Views/Widgets/booking_rating.dart';
import 'package:book_app/Features/Home/Presentation/Views/Widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import 'button_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

=======
import 'package:flutter/material.dart';

>>>>>>> 520b2ee199c0ed5e8d9067db6402d6b52267089f
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    var width=MediaQuery.of(context).size.width;
    return  CustomScrollView(

      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(

              children: [
                CustomBookDetailsAPPBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*.2),
                  child: const CustomBookImage(),
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
                ),
                const SizedBox(height: 15,),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
                const SizedBox(height: 37,),
                const ButtonAction(),
                const SizedBox(height: 37,),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('you can also like',style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
                SizedBox(height: 40,),

                const SimilarBooksListView(),

              ],

            ),
          )
        )
      ],
    );





  }
}




=======
    return Container();
  }
}
>>>>>>> 520b2ee199c0ed5e8d9067db6402d6b52267089f
