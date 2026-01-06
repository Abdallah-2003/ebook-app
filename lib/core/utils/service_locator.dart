import 'package:dio/dio.dart';
import 'package:ebook_app/core/utils/api_service.dart';
import 'package:ebook_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {

  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(getIt.get<ApiService>()),
  );
}

// don't provide cubit with (get_it) because it will never be closed
// by default BlocProvider() close it when it finished