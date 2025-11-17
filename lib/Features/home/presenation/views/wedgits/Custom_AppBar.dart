import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 20),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
            iconSize: 28,
          ),
        ],
      ),
    );
  }
}
