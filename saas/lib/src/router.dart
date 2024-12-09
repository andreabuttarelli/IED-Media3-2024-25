import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saas/src/views/dashboard/dashboard_view.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Scaffold(
      body: Text('Homepage'),
    ),
  ),
  GoRoute(
    path: '/qualcosa',
    builder: (context, state) => const Scaffold(
      body: Text('Qualcosa'),
    ),
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
