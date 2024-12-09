import 'package:flutter/material.dart';
import 'package:saas/src/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    MaterialApp.router(
      routerConfig: router,
    ),
  );
}
