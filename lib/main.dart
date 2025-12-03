import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/functions/setup_service_locator.dart';
import 'package:bookly/Core/utils/simple_bloc_ovserver.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/Domain/use_case/fetch_feature_boos_use_case.dart';
import 'package:bookly/Features/home/Domain/use_case/fetch_newest_use_cae.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presenation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presenation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  setupServiceLocator();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  Bloc.observer=SimpleBlocOvserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeatureBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubitCubit(
              FetchNewestBoosUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
