import 'package:book_app/Core/Utils/styles.dart';
import 'package:book_app/Core/Widgets/custom_vertical_books_loading.dart';
import 'package:book_app/Features/Home/Data/Models/BookModel.dart';
import 'package:book_app/Features/Search/Presentation/Manager/SearchBooksCubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Widgets/custom_error_widget.dart';
import '../../../../Home/Presentation/Views/Widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {

        if (state is SearchBooksSuccess) {
          if (state.books.isNotEmpty)
            {
              print('ssssssssssssssssssssssssss');
              print(state.books.length);
              print(state.books[5].volumeInfo.authors![0]);
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount:
                state.books.length,

                itemBuilder: (contxt, index) {

                  return //Text(state.books[index].volumeInfo.title!);
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BookListViewItem(
                      bookModel: state.books[index],),

                  );
                }
            );
        }
          else
            {
              return const Center(child: Text('Search For Any Book'));
            }
            }
        else if(state is SearchBooksFailure)  {
          return CustomErrorWidget(errMessage: state.errMessage,);
        }
        else if(state is SearchBooksLoading)
        {
          return const CustomVerticalBooksLoading();

        }
        else
        {
          return const Center(child: Text('Search For Any Book',style: Styles.textStyle30,));
        }

    }





     // },
 );

  }
}