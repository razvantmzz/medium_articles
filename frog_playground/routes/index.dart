import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  final method = request.method;
  print("method ${context.request.method == HttpMethod.get}");

  return Response.json(
    statusCode: 404,
    body: <String, dynamic>{'hello': 'world!'},
  );
}
