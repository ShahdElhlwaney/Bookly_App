
import 'package:go_router/go_router.dart';

import '../../Features/Home/Presentation/Views/book_details_view.dart';
import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter
{

  static const kHomeView='/homeView';
  static const kBookDetailsView='/bookDetailsView';

// GoRouter configuration
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path:kBookDetailsView ,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );



}