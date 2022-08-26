part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {
  final List<NewsInfo> news;
  NewsInitial({required this.news});
}

class NewsInitialSearch extends NewsState {
  final List<NewsInfo> news;
  NewsInitialSearch({required this.news});
}

class NewsLoading extends NewsState {}

class NewsError extends NewsState {}
