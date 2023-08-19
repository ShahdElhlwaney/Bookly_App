


import 'package:book_app/Core/Error/failures.dart';
import 'package:book_app/Core/Utils/api_service.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../Models/BookModel.dart';


class HomeRepoImpl implements HomeRepo
{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try{
      List<BookModel> books=[];
      var data=await apiService.get(endPoint:
      'volumes?Filtering=free-ebooks&Sorting=newest &q=intitle:computer science');
      for(var item in data['items'])///subject:
      {
        try {
          books.add(BookModel.fromJson(item));
        }catch(e) {}
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()async {
    try{
      List<BookModel> books=[];
      var data=await apiService.get(endPoint:
      'volumes?Filtering=free-ebooks &q=subject:Programming');
      for(var item in data['items'])
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String categories}) async{
    try{
      List<BookModel> books=[];
      var data=await apiService.get(endPoint:
      'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming');
      for(var item in data['items'])
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