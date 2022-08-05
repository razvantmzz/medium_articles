import 'package:flutter/material.dart';
import 'package:flutter_flavors/app_config.dart';
import 'package:flutter_flavors/main.dart';

void main() {
  final prodAppConfig = AppConfig(
    appName: "Dev Flavor",
    themeData: ThemeData(primarySwatch: Colors.yellow),
  );
  runWithAppConfig(prodAppConfig);
}
