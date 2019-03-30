import 'dart:async';

abstract class Repository<T> {
  void saveCache(T data) {}
  Future<bool> clearCache() async {
    return null;
  }
  Future<T> fetchCache() async {
    return null;
  }

  Future<T> fetch();
  Future<T> fetchMore(int page);
}