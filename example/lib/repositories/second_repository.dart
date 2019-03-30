import 'package:repository/repository.dart';

@RepositoryAnnotation(name: 'hello')
class SecondRepository extends Repository{
  @override
  Future fetch() {
    // TODO: implement fetch
    return null;
  }

  @override
  Future fetchMore(int page) {
    // TODO: implement fetchMore
    return null;
  }
}
