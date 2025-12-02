import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async{
  runApp(const BooklyApp());
  Hive.registerAdapter(BookEntityAdapter());
 await Hive.openBox(KFeaturedBox);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
