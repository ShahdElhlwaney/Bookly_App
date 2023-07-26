


import 'package:book_app/Core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/assets.dart';
import '../../../../../Core/utils/styles.dart';
import 'booking_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3/4,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(Assets.test_image))
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.5
                      ,child: const Text('Hary Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  )),
                  const SizedBox(height: 3,),
                  const Text('J.K. Rowling',style: Styles.textStyle14,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99 \$ ',style:
                      Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      const BookRating()
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

