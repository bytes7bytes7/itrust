typedef SearchAlgorithm<T> = bool Function(String query, T item);

abstract class SearchRepository<T> {
  const SearchRepository();

  Future<List<T>> load({
    required int limit,
    required int offset,
    required String query,
  });
}
