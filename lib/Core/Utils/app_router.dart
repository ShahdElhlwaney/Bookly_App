import 'package:book_app/Core/Utils/service_locator.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:book_app/Features/Search/Presentation/Views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Home/Data/Models/BookModel.dart';
import '../../Features/Home/Presentation/Manger/SimilarBooksCubit/similar_books_cubit.dart';
import '../../Features/Home/Presentation/Views/book_details_view.dart';

import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Search/Presentation/Manager/SearchBooksCubit/search_books_cubit.dart';
import '../../Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter {


  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

// GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(

        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>
            BlocProvider<SimilarBooksCubit>(
                create: (context) =>
                    SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
                child: BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
              child: const SearchView(),
            ),
      ),


    ],
  );


}