import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/best_seller_list%20_view_item.dart';
import 'package:bookly/Features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          CustomSearchTextField(),
          const SizedBox(height: 20),
          Text("Search Result",style: Styles.textStyle18,),

          const SizedBox(height: 20),
          Expanded(child: SearcgResultListview()),
        ],
      ),
    );
  }
}

class SearcgResultListview extends StatelessWidget {
  const SearcgResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
