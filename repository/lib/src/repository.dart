import 'dart:async';

abstract class Repository<T> {
  Future<bool> clearCache() async {
    return null;
  }
}