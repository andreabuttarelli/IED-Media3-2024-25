import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saas/src/views/dashboard/dashboard_view.dart';
import 'package:saas/src/views/feed/feed_view.dart';
import 'package:saas/src/views/sign-in/signin_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Scaffold(
      body: Text('Homepage'),
    ),
  ),
  GoRoute(
    path: '/sign-in',
    builder: (context, state) => const SignInView(),
    redirect: (context, state) {
      if (Supabase.instance.client.auth.currentUser != null) {
        return '/';
      }
      return null;
    },
  ),
  GoRoute(
    path: '/feed',
    builder: (context, state) => const FeedView(),
  ),
  GoRoute(
    path: '/post/:id',
    builder: (context, state) => Scaffold(
      body: Text('Post ${state.pathParameters['id']}'),
    ),
  ),
  ShellRoute(
    builder: (context, state, child) {
      return DashboardView(child: child);
    },
    routes: [
      GoRoute(
        path: '/dashboard/alpaca',
        builder: (context, state) => const ColoredBox(
          color: Colors.red,
          child: Text('Alpaca'),
        ),
      ),
      GoRoute(
        path: '/dashboard/inter',
        builder: (context, state) => const ColoredBox(
          color: Colors.black,
          child: Text('Inter'),
        ),
      ),
      GoRoute(
        path: '/dashboard/gatto',
        builder: (context, state) => const ColoredBox(
          color: Colors.yellow,
          child: Text('Gatto'),
        ),
      ),
    ],
  ),
]);
