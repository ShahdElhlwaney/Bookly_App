import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../Home/Data/Models/BookModel.dart';


part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());


  SearchRepo searchRepo;
  Future<void> getSearchBooks({required String title})async
  {
    emit(SearchBooksLoading());
    var result=await  searchRepo.getSearchBooks(title: title);

    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
      //

      emit(SearchBooksSuccess(books));
    });
  }

}
