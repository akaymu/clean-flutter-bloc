import 'package:dartz/dartz.dart';
import 'package:news_app/core/services_locator.dart';

import 'package:news_app/features/show_news/domain/entities/news_info.dart';
import 'package:news_app/features/show_news/domain/repositories/fetch_repo_contract.dart';
import '../../../../core/failures_successes/failures.dart';

class FetchNewsUseCase {
  final FetchRepo fetchRepo = sl<FetchRepo>();

  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) {
    return fetchRepo.fetchNews(searchText);
  }
}
