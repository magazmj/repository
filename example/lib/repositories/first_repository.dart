import 'package:repository/repository.dart';

@RepositoryAnnotation(name: 'test')
class TestRepository extends Repository{

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
