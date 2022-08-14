import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(mainHandler());
}

Middleware mainHandler() {
  return (handler) {
    return (context) async {
      // Execute code before request is handled.
      // Forward the request to the respective handler.
      print("methods type before ${context.request.method}");
      final response = await handler(context);
      print("methods type after ${context.request.method}");
      // Execute code after request is handled.
      // Return a response.
      return response;
    };
  };
}
