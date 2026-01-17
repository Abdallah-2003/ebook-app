import 'package:ebook_app/core/utils/service_locator.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:ebook_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:ebook_app/features/home/presentation/views/book_details_view.dart';
import 'package:ebook_app/features/home/presentation/views/home_view.dart';
import 'package:ebook_app/features/search/presentation/views/search_view.dart';
import 'package:ebook_app/features/spalsh/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kbookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kbookDetailsView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
            child: BookDetailsView(
              booksModel: state.extra as BooksModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
