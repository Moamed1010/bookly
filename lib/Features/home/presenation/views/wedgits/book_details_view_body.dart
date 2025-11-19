import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        child: CustomBookDetailsAppBar(),
      ),

      ],
    );
  }
}

