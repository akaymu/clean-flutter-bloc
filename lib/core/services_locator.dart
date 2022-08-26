import 'package:get_it/get_it.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/features/show_news/data/data_sources/fetch_from_remote_ds.dart';
import 'package:news_app/features/show_news/data/repositories/fetch_repo_impl.dart';
import 'package:news_app/features/show_news/domain/repositories/fetch_repo_contract.dart';
import 'package:news_app/features/show_news/domain/usecases/fetch_news.dart';

final GetIt sl = GetIt.instance;

void setUpServices() {
  sl.registerSingleton<ApiService>(ApiServiceImpl());
  sl.registerSingleton<FetchFromRemoteDS>(FetchFromRemoteDSImpl());
  sl.registerSingleton<FetchRepo>(FetchRepoImpl());
  sl.registerSingleton<FetchNewsUseCase>(FetchNewsUseCase());
}
