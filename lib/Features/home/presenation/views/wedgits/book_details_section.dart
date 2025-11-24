import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_Item.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/book_rating.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
      ],
    );
  }
}
