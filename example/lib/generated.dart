/*
    Generated at: 2019-03-30 20:15:28.517312
        AssetId: example|lib/$lib$
    */
import 'dart:async';
import 'package:repository/repository.dart';
import 'package:example/repositories/second_repository.dart';
import 'package:example/repositories/first_repository.dart';

Future<void> clearCache() async {
  Repository repo;
  repo = SecondRepository();
  repo.clearCache();
  repo = TestRepository();
  repo.clearCache();
}
