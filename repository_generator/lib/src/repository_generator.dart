import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:repository/repository.dart';
import 'package:repository_generator/src/data.dart';

class RepositoryGenerator extends GeneratorForAnnotation<RepositoryAnnotation> {

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    List<String> paths = buildStep.inputId.pathSegments;
    paths.removeAt(0);
    String path = paths.join('/');
    imports.add("import 'package:${buildStep.inputId.package}/$path';");
    repos.add('repo = ${element.name}(); repo.clearCache();');
    return null;
  }
}

