import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/core/mediators/either.dart';
import 'package:news_app/core/the_erorrs/failure.dart';
import 'package:news_app/features/domain/entities/search.dart';
import 'package:news_app/features/domain/entities/search_by_source.dart';
import 'package:news_app/features/domain/repositories/search_repository.dart';
import 'package:news_app/features/domain/usecases/search_by_everything.dart';

class FakeInterfaceImplementation implements SearchRepository {
  @override
  Future<Either<Search, Failure>> searchByEverything(
      {required String q,
      String? sources,
      String? from,
      String? to,
      String? language,
      String? sortBy,
      int? pageSize}) {
    return Future.value(Either(second: Failure("everything")));
  }

  @override
  Future<Either<Search, Failure>> searchByTopHeadlines(
      {String? country,
      String? category,
      String? sources,
      String? q,
      int? pageSize}) {
    return Future.value(Either(second: Failure("")));
  }

  @override
  Future<Either<SearchBySource, Failure>> searchByTopHeadlinesAndSources(
      {String? category, String? language, String? country}) {
    return Future.value(Either(second: Failure("")));
  }
}

void main() {
  test('Test SearchByEverything usecase', () async {
    SearchByEverything searchByEverything =
        SearchByEverything(FakeInterfaceImplementation());
    SearchByEverythingParams searchByEverythingParams =
        SearchByEverythingParams(q: "q", sources: "sources");
    String message = (await searchByEverything.call(searchByEverythingParams))
        .second!
        .message;
    expect(message == "everything", true);
  });
}
