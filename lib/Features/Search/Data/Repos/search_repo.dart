


import 'package:book_app/Core/Error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../Home/Data/Models/BookModel.dart';

abstract class SearchRepo
{
  Future<Either<Failure,List<BookModel>>> getSearchBooks({required String title});
}