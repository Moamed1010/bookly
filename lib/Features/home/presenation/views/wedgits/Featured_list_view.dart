import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presenation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Custom_book_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatefulWidget {
  const FeaturedBookListView({super.key, required this.books});
  final List<BookEntity> books;

  @override
  State<FeaturedBookListView> createState() => _FeaturedBookListViewState();
}

class _FeaturedBookListViewState extends State<FeaturedBookListView> {
  late final ScrollController scrollController;
  var nextPage = 1;
  bool isLoading=false;
  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() async{
    var currentPosition = scrollController.position.pixels;
    var maxScrollLenght = scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7* maxScrollLenght) {
      if (!isLoading) {
        isLoading=true;
  await BlocProvider.of<FeaturedBooksCubit>(context)
      .FetchFeatureBooks(pageNumber: nextPage++);
      isLoading=false;
}
   
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomBookImage(
              image: widget.books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
