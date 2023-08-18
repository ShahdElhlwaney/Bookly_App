import 'package:book_app/Features/Home/Presentation/Views/Widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import '../../../Data/Models/BookModel.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override

  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAPPBar(),
                BookDetailsSection(book: bookModel,),
                const Expanded(child: SizedBox(height: 37,)),
                const SimilarBooksSection(),
                const SizedBox(height: 40,),
              ],
            ),
          )
        )
      ],
    );
  }
}




