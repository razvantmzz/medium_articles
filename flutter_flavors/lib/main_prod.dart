import 'package:flutter/material.dart';
import 'package:flutter_flavors/app_config.dart';
import 'package:flutter_flavors/main.dart';

void main() {
  final prodAppConfig = AppConfig(
    appName: "Prod Flavor",
    themeData: ThemeData(primarySwatch: Colors.deepPurple),
  );
  runWithAppConfig(prodAppConfig);
}
