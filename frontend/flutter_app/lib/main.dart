import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://your-project.supabase.co',         // 🔁 Replace with your Supabase URL
    anonKey: 'your-anon-key',                        // 🔁 Replace with your Supabase anon key
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      home: Scaffold(
        appBar: AppBar(title: const Text("Spotify Clone")),
        body: const Center(child: Text("Supabase Initialized")),
      ),
    );
  }
}
