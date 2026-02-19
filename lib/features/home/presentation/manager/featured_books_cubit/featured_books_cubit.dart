import 'package:bloc/bloc.dart';
import 'package:ebook_app/features/home/domain/entities/book_entity.dart';
import 'package:ebook_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {

    emit(FeaturedBooksLoading());

    final res = await featuredBooksUseCase.call();

    res.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.errMessage));
      }, (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );

  }
}
