import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/Domain/use_case/fetch_newest_use_cae.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.fetchNewestBoosUseCase)
      : super(NewestBooksInitial());
  final FetchNewestBoosUseCase fetchNewestBoosUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBoosUseCase.call();
    result.fold((faliuir) {
      emit(NewestBooksFailure(faliuir.message));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
