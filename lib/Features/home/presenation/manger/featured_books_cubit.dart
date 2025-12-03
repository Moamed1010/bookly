import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/Domain/use_case/fetch_feature_boos_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featureBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeatureBooksUseCase featureBooksUseCase;
  Future<void> FetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featureBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
