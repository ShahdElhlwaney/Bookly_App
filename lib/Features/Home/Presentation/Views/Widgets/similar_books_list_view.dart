import 'package:book_app/Core/Widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Widgets/custom_horizontal_books_loading.dart';
import '../../Manger/SimilarBooksCubit/similar_books_cubit.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
         if(state is SimilarBooksSuccess)
           {
             return SizedBox(
               height: MediaQuery
                   .of(context)
                   .size
                   .height * .22,
               child: ListView.builder(
                 itemCount: state.books.length,
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) {
                     return  Padding(
                       padding:  EdgeInsets.symmetric(horizontal: 5),
                       child: CustomBookImage(imageUrl:
                       state.books[index].volumeInfo.imageLinks?.thumbnail??'',),
                     );
                   }),
             );
           }
         else if(state is SimilarBooksFailure)
           {
             return CustomErrorWidget(errMessage: state.errMessage);
           }
         else
         {
           return const CustomHorizontalBooksLoading();
         }

      },
    );
  }
}