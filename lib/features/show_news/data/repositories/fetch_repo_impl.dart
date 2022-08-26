import 'package:news_app/core/failures_successes/exceptions.dart';
import 'package:news_app/core/services_locator.dart';
import 'package:news_app/features/show_news/data/data_sources/fetch_from_remote_ds.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';
import 'package:news_app/core/failures_successes/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:news_app/features/show_news/domain/repositories/fetch_repo_contract.dart';

class FetchRepoImpl implements FetchRepo {
  final FetchFromRemoteDS fetchFromRemoteDS = sl<FetchFromRemoteDS>();

  @override
  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) async {
    try {
      return Right(await fetchFromRemoteDS.fetchNews(searchText));
    } on FetchException catch (e) {
      return Left(FetchFailure(message: e.message));
    }
  }
}
