import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../Data/Models/BookModel.dart';
import '../../../Data/Repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  HomeRepo homeRepo;
  Future<void> getSimilarBooks({required String categories})async
  {
    emit(SimilarBooksLoading());
    var result= await homeRepo.fetchSimilarBooks(categories: categories);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }


}
