import 'package:dart_frog/dart_frog.dart';
import 'package:frog_playground/persistence/frog_mysql_client.dart';

Future<Response> onRequest(RequestContext context) async {
  final username = context.read<FrogMysqlClient>();
  final result =
      await username.execute('SELECT id, name, imageUrl FROM api_route;');

  return Response.json(body: result);
}
