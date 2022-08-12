import 'package:dart_frog/dart_frog.dart';
import 'package:frog_playground/usernames.dart';

Response onRequest(RequestContext context) {
  final username = context.read<Usernames>();

  return Response.json(
    body: <String, dynamic>{'username': username.getName()},
  );
}
