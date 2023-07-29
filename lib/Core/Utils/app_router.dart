
import 'package:go_router/go_router.dart';

<<<<<<< HEAD:lib/Core/Utils/app_router.dart
import '../../Features/Home/Presentation/Views/book_details_view.dart';
=======
>>>>>>> 520b2ee199c0ed5e8d9067db6402d6b52267089f:lib/Core/utils/app_router.dart
import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter
{
<<<<<<< HEAD:lib/Core/Utils/app_router.dart

  static const kHomeView='/homeView';
  static const kBookDetailsView='/bookDetailsView';

=======
 static const kHomePath='/homeView';
>>>>>>> 520b2ee199c0ed5e8d9067db6402d6b52267089f:lib/Core/utils/app_router.dart
// GoRouter configuration
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
<<<<<<< HEAD:lib/Core/Utils/app_router.dart
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path:kBookDetailsView ,
        builder: (context, state) => const BookDetailsView(),
      ),
=======
        path: kHomePath,
        builder: (context, state) => const HomeView(),
      ),
>>>>>>> 520b2ee199c0ed5e8d9067db6402d6b52267089f:lib/Core/utils/app_router.dart
    ],
  );



}