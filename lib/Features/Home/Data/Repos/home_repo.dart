

import 'package:book_app/Core/Error/failures.dart';
import 'package:dartz/dartz.dart';

import '../Models/BookModel.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String categories});
}
