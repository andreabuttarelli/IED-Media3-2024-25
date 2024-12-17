import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  void signIn() {
    Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.github,
      redirectTo: 'http://localhost:3000',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: signIn,
          child: const SizedBox(
            width: 120,
            height: 48,
            child: Center(
              child: Text(
                'Sign In',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
