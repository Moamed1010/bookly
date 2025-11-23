import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_details_appbar.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_Item.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/book_rating.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/books_action.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/similer_box_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .23),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          Text(
            "The Junle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .8,
            child: Text(
              "Rudyaed Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const BookRate(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
          const SizedBox(height: 50),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              "yYou can also like",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 16),
          similerBookListView(),
        ],
      ),
    );
  }
}

