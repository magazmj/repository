import 'package:build/build.dart';
import 'package:repository_generator/src/repository_build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:repository_generator/src/repository_generator.dart';


Builder repositoryGenerator(BuilderOptions options) =>
    SharedPartBuilder([RepositoryGenerator()], 'repository_generator',);

Builder repoBuilder(BuilderOptions options) => RepoBuilder();



