import 'package:flutter/material.dart';

class HomeSonos extends StatelessWidget {
  const HomeSonos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 32),
            child: Row(
              children: [
                Icon(icon),
                Text(data),
                Text(data),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Row(
              children: [
                const Text('SONOS'),
                const Row(
                  children: [
                    Text('Play'),
                    Text('Pause'),
                    Text('Next'),
                  ],
                ),
                Row(
                  children: [
                    Icon(icon),
                    Icon(icon),
                    Icon(icon),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
