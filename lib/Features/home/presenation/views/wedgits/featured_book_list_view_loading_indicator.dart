import 'package:bookly/Core/widgets/custom_fading_widget.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBookListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .23,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
