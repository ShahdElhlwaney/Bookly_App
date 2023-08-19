
import 'package:book_app/Core/Utils/service_locator.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_app/Features/Home/Presentation/Manger/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:book_app/Features/Home/Presentation/Manger/NewestBooksCubit/newest_books_cubit.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:book_app/Features/Search/Presentation/Manager/SearchBooksCubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Core/Constants.dart';
import 'Core/utils/app_router.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..getFeaturedBooks(),
        ),
        BlocProvider<NewestBooksCubit>(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
            ..getNewestBooks(),
        ),



      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme:ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kMainColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)

        ),
       // home:const SplashView() ,

      ),
    );

  }
}
