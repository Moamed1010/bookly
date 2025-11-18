import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_AppBar.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBookListView(),
          const SizedBox(height: 20),
          Text("Best Seller", style: Styles.titelMedium),
          BeatSellerListViewItem(),
        ],
      ),
    );
  }
}

class BeatSellerListViewItem extends StatelessWidget {
  const BeatSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.tets),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
