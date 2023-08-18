


import 'package:book_app/Features/Home/Presentation/Views/Widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('you can also like'
          ,style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600
          ),),
        SizedBox(height: 16,),
        const SimilarBooksListView(),
      ],
    );
  }
}
