import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/book_rating.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BeatSellerListViewItem extends StatelessWidget {
  const BeatSellerListViewItem.BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
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
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      maxLines: 2,
                      "Harry Potter\nand the Goblet of Fire",
                      style: Styles.textStyle26.copyWith(
                        fontFamily: KGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text("J.K. Rowling ", style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text("19.99 €", style: Styles.textStyle26),
                      const Spacer(),
                      const BookRate(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
