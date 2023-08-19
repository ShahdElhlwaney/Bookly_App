import 'package:book_app/Features/Home/Presentation/Manger/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Widgets/custom_error_widget.dart';
import '../../../../../Core/Widgets/custom_horizontal_books_loading.dart';
import 'custom_book_image.dart';
class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (BuildContext context, state) {
        if(state  is FeaturedBooksSuccess)
          {
            return SizedBox(
              height: MediaQuery.of(context).size.height *.25,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.books[index]);
                        }
                      ,child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??
                          '"http://books.google.com/books/content?id=LWCYBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"',)),
                    );
                  }),
            );
          }
        else if(state is FeaturedBooksFailure)
          {
            return CustomErrorWidget(errMessage: state.errMessage,);
          }
        else
        {
           return const CustomHorizontalBooksLoading();
        }
      },
    );
  }
}