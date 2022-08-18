import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context, String id) {
  return Response.json(
    statusCode: 404,
    body: <String, dynamic>{'id': id},
  );
}
