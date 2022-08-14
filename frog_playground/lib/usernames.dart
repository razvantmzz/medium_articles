import 'dart:math';

///Holder class for returning a random username
class Usernames {
  final List<String> _usernames = [
    'Andrei91',
    'Rabit123',
    'Codingcamp44',
  ];

  late final _random = Random();

  ///Returns a random name
  String getName() {
    final index = _random.nextInt(_usernames.length);
    return _usernames.elementAt(index);
  }
}
