import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  Future<List<dynamic>?> fetchFeed() async {
    final res = await Supabase.instance.client.from('ied_posts').select();
    if (res.isEmpty) return null;
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>?>(
        future: fetchFeed(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: Text('Data is empty'),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => Text(
              snapshot.data![index]['content'],
            ),
          );
        },
      ),
    );
  }
}
