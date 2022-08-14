import 'package:dart_frog/dart_frog.dart';
import 'package:frog_playground/usernames.dart';

Handler middleware(Handler handler) {
  return handler.use(provider<Usernames>((context) => Usernames()));
}
