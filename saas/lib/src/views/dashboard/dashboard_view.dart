import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SideBar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.green,
      ),
      width: 300,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => context.push('/dashboard/alpaca'),
            child: const Text('Alpaca'),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () => context.push('/dashboard/inter'),
            child: const Text('Inter'),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () => context.push('/dashboard/gatto'),
            child: const Text('Gatto'),
          ),
        ],
      ),
    );
  }
}
