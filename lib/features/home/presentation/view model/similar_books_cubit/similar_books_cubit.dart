import 'package:bloc/bloc.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks () async {

    emit(SimilarBooksLoading());
    final result = await homeRepo.fetchSimilarBooks(category: '');
    result.fold(
      (failure) {
        emit(SimilarBooksFailure(errMessage: failure.errMessage));
      }, (books) {
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
