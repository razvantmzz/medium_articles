import 'package:dart_frog/dart_frog.dart';
import 'package:frog_playground/datasource/climbing_route_data_source.dart';

Future<Response> onRequest(RequestContext context) async {
  final accountRepository = context.read<ClimbingRouteDataSource>();

  final users = await accountRepository.fetchMinifiedClimbingRoutes();

  return Response.json(body: users);
}
