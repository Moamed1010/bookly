import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_details_appbar.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_Item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
        
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.17),
          child: const CustomBookImage(),
        ),
      
        ],
      ),
    );
  }
}

