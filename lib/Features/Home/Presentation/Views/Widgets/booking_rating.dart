

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({this.mainAxisAlignment=MainAxisAlignment.start, required this.count, required this.rating});
  final String count;
  final String rating;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),size: 14,),
        SizedBox(width: 6.3,),
        Text(rating ,style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('($count)',style: Styles.textStyle14.copyWith(
            color: Colors.grey,
          fontWeight: FontWeight.w600
        ),)

      ],
    );
  }
}
