import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../../Core/Error/failures.dart';
import '../../../../Home/Data/Models/BookModel.dart';


part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());


  SearchRepo searchRepo;
  Future<void> getSearchBooks({required String title})async
  {
    emit(SearchBooksLoading());
    Either<Failure,List<BookModel>> result=await  searchRepo.getSearchBooks(title: title);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
         if(title=='')
           {
             books=[];
             emit(SearchBooksSuccess(books));
           }
          else {
           emit(SearchBooksSuccess(books));
         }

    });

   // return  right(li);
  }

}
