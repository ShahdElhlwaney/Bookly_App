

import 'package:book_app/Core/Utils/api_service.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

  GetIt getIt=GetIt.instance;
  void setup()
  {
    getIt.registerSingleton<ApiService>(ApiService(Dio()));
    getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
    getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getIt.get<ApiService>()));
  }