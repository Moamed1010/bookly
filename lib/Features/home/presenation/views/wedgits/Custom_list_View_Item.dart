
import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomLitViewItem extends StatelessWidget {
  const CustomLitViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.tets),
            ),
          ),
        ),
      ),
    );
  }
}
