import 'package:dart_frog/dart_frog.dart';
import 'package:frog_playground/datasource/climbing_route_data_source.dart';
import 'package:frog_playground/persistence/frog_mysql_client.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(injectionHandler());
}

Middleware injectionHandler() {
  return (handler) {
    return handler.use(
      provider<ClimbingRouteDataSource>(
        (context) => ClimbingRouteDataSource(context.read<FrogMysqlClient>()),
      ),
    );
  };
}
