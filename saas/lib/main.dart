import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saas/src/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  setPathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  await Supabase.initialize(
    url: 'https://zaqmzycxvwlojovywfzp.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InphcW16eWN4dndsb2pvdnl3ZnpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzNDg2NTQsImV4cCI6MjAxNDkyNDY1NH0.DiHIVQ3b8BHI3lSavthTMoJKLIQgImbmMpWvspJ6sOQ',
  );
  runApp(
    MaterialApp.router(
      routerConfig: router,
    ),
  );
}
