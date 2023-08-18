import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../Data/Models/BookModel.dart';
import '../../../Data/Repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> getNewestBooks()async
  {
    emit(NewestBooksLoading());
    var result= await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
