import 'package:bookly/Features/home/presenation/views/wedgits/Custom_list_View_Item.dart';

import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return const CustomLitViewItem();
                },
              ),
      ),
    ) ;
  }
}