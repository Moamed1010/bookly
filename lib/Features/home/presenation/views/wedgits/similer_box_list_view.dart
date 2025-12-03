import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_Item.dart';
import 'package:flutter/material.dart';

class similerBookListView extends StatelessWidget {
  const similerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .179,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:  CustomBookImage(
              image: '',
            ),
          );
        },
      ),
    );
  }
}
