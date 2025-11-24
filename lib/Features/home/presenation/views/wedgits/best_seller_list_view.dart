import 'package:bookly/Features/home/presenation/views/wedgits/best_seller_list%20_view_item.dart';
import 'package:flutter/material.dart';

class BeatSellerListView extends StatelessWidget {
  const BeatSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: BeatSellerListViewItem.BookListViewItem(),
        );
      },
    );
  }
}
