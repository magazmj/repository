import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:repository_generator/src/data.dart';

  
class RepoBuilder implements Builder {
  @override
  Future build(BuildStep buildStep) async {
    print(buildStep.inputId);
    await buildStep.writeAsString(
        AssetId(buildStep.inputId.package, 'lib/generated.dart'),
        _repoContent(buildStep.inputId));
  }

  @override
  final buildExtensions = const {
    r'$lib$': ['generated.dart']
  };

  static final _formatter = DartFormatter();

  static String _repoContent(AssetId inputId) {
    String importStr =imports.join('\n');
    String repoStr = repos.join('\n');
    repoStr = '''
    /*
    Generated at: ${DateTime.now()}
        AssetId: $inputId
    */
    import 'dart:async';
    import 'package:repository/repository.dart';
    $importStr
    Future<void> clearCache() async {
      Repository repo;
      $repoStr
    }
    ''';
    return _formatter.format(repoStr);
  }

}