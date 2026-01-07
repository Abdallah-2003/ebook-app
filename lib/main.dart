import 'package:ebook_app/constant.dart';
import 'package:ebook_app/core/utils/app_router.dart';
import 'package:ebook_app/core/utils/service_locator.dart';
import 'package:ebook_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:ebook_app/features/home/presentation/view%20model/featured_book_cubit/featured_books_cubit.dart';
import 'package:ebook_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const EbookApp());
}

class EbookApp extends StatelessWidget {
  const EbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImplementation>())..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplementation>())..fetchNewestBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
