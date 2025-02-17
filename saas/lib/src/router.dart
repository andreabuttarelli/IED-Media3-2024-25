import 'package:go_router/go_router.dart';
import 'package:saas/src/views/home/home_view.dart';
import 'package:saas/src/views/sign-in/signin_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final router = GoRouter(routes: [
  ShellRoute(
    routes: [
      GoRoute(
        path: '/',
      ),
    ],
    builder: (context, state, child) => const HomeView(),
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
]);
