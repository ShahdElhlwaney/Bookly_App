
import 'package:go_router/go_router.dart';

import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter
{
 static const kHomePath='/homeView';
// GoRouter configuration
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomePath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );



}