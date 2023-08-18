import 'package:book_app/Features/Home/Data/Repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Data/Models/BookModel.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;
  Future<void> getFeaturedBooks()async
  {
    emit(FeaturedBooksLoading());
   var result= await homeRepo.fetchFeaturedBooks();
   result.fold((failure) {
       emit(FeaturedBooksFailure(failure.errMessage));
   }, (books) {
     emit(FeaturedBooksSuccess(books));
   });
  }
}
