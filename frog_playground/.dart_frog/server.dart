// ignore_for_file: prefer_single_quotes, implicit_dynamic_list_literal, prefer_const_constructors, lines_longer_than_80_chars, avoid_dynamic_calls, library_prefixes, directives_ordering

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../routes/index.dart' as index;
import '../routes/username/index.dart' as username_index;
import '../routes/username/[id].dart' as username_$id;

import '../routes/_middleware.dart' as middleware;
import '../routes/username/_middleware.dart' as username_middleware;

void main() => hotReload(createServer);

Future<HttpServer> createServer() {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = Cascade().add(buildRootHandler()).handler;
  return serve(handler, ip, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline().addMiddleware(middleware.middleware);
  final router = Router()
    ..mount('/username', (r) => buildUsernameHandler()(r))
    ..mount('/', (r) => buildHandler()(r));
  return pipeline.addHandler(router);
}

Handler buildUsernameHandler() {
  final pipeline = const Pipeline().addMiddleware(username_middleware.middleware);
  final router = Router()
    ..all('/', username_index.onRequest)..all('/<id>', username_$id.onRequest);
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  const pipeline = Pipeline();
  final router = Router()
    ..all('/', index.onRequest);
  return pipeline.addHandler(router);
}
