import 'package:bloc/bloc.dart';
import 'package:ebook_app/features/home/domain/entities/book_entity.dart';
import 'package:ebook_app/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchFeaturedBooks() async {

    emit(NewestBooksLoading());

    final res = await fetchNewestBooksUseCase.call();

    res.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errMessage));
      }, (books) {
        emit(NewestBooksSuccess(books));
      },
    );

  }
}
