
import 'package:book_app/Features/Home/Presentation/Manger/NewestBooksCubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Widgets/custom_error_widget.dart';
import '../../../../../Core/Widgets/custom_vertical_books_loading.dart';
import 'book_list_view_item.dart';
class NewestListView extends StatelessWidget {
  const NewestListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess)
          {
            return ListView.builder(
                physics:const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context,index){
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BookListViewItem(bookModel: state.books[index],),
                  );
                });
          }
        else if(state is NewestBooksFailure)
          {
            return CustomErrorWidget(errMessage: state.errMessage,);
          }
        else
          {
            return const CustomVerticalBooksLoading();
          }
      },
    );
  }
}