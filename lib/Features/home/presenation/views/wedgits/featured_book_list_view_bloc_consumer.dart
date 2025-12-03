import 'package:bookly/Core/utils/functions/build_error_snackbar.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presenation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/Featured_list_view.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/featured_book_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksListViewBlocConsumer> createState() =>
      _FeaturedBooksListViewBlocConsumerState();
}

class _FeaturedBooksListViewBlocConsumerState
    extends State<FeaturedBooksListViewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationLoadingFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            buildErroeWidget(state.message),
          );
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationLoadingFailure) {
          return FeaturedBookListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.message);
        } else {
          return FeaturedBookListViewLoadingIndicator();
        }
      },
    );
  }
}
