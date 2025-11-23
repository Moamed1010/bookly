import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_details_appbar.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/book_details_section.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/book_similer_setion.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: const [
                 CustomBookDetailsAppBar(),
                SizedBox(height: 20),
                BookDetailSection(),
                 
                Expanded(child:  SizedBox(height: 50)),
                SimilerBookSection(),
             
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
