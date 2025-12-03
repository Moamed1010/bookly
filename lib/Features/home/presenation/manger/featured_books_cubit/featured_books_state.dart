part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksPaginationLoading extends FeaturedBooksState {}
class FeaturedBooksPaginationLoadingFailure extends FeaturedBooksState {
  final String message;

  FeaturedBooksPaginationLoadingFailure(this.message);
}
class FeaturedBooksSuccess extends FeaturedBooksState {
final List<BookEntity>books;

  FeaturedBooksSuccess(this.books);

}
class FeaturedBooksFailure extends FeaturedBooksState {
final String message;

  FeaturedBooksFailure(this.message);

}


