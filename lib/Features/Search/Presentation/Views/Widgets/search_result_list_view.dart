import 'package:book_app/Core/Widgets/custom_vertical_books_loading.dart';
import 'package:book_app/Features/Search/Presentation/Manager/SearchBooksCubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Widgets/custom_error_widget.dart';
import '../../../../../Core/Widgets/custom_horizontal_books_loading.dart';
import '../../../../Home/Presentation/Views/Widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if(state is SearchBooksSuccess)
          {
            return ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(state.books[index].volumeInfo.title!)
                    // BookListViewItem(),
                  );
                });
          }
        else if(state is SearchBooksFailure)
          {
            return CustomErrorWidget(errMessage: state.errMessage,);
          }
        else
        {
          return Text('');
          //CustomVerticalBooksLoading();
        }

      },
    );
  }
}