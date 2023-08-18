


import 'package:book_app/Core/Error/failures.dart';
import 'package:book_app/Core/Utils/api_service.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../Home/Data/Models/BookModel.dart';

class SearchRepoImpl implements SearchRepo
{
 final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> getSearchBooks({required String title})async {
   try{
    List<BookModel>books=[];

    var result=await apiService.get(endPoint:
    'volumes?Filtering=free-ebooks&q=intitle:$title');
    for(var item in result['items'])
    {
     books.add(BookModel.fromJson(item));
    }
    return right(books);
   }catch(e)
   {
    if(e is DioException)
     {
      return left(ServerFailure.fromDioException(e));
     }
    return left(ServerFailure(e.toString()));
   }


  }
  
}