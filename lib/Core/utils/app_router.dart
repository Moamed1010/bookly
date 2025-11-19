import 'package:bookly/Features/home/presenation/views/home_View.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const Khomeview='/homeview';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),

      GoRoute(path: Khomeview, builder: (context, state) => const HomeView()),
    ],
  );
}
