import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:frog_playground/persistence/frog_mysql_client.dart';

final mysqlClient = FrogMysqlClient();

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler.use(databaseHandler()), ip, port);
}

Middleware databaseHandler() {
  return (handler) {
    return handler.use(
      provider<FrogMysqlClient>(
        (context) => mysqlClient,
      ),
    );
  };
}
