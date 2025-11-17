import 'package:bookly/Features/home/presenation/views/wedgits/Custom_AppBar.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomAppBar(), FeaturedBookListView()]);
  }
}
