import 'package:flutter/material.dart';
import 'package:notes_app/notes_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://qvszaqnjrmqlnvcyakwb.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF2c3phcW5qcm1xbG52Y3lha3diIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI5NTMxNDYsImV4cCI6MjA0ODUyOTE0Nn0.FFI4lYR2N8jevCNEXraf7jBROw1LGImuqw9kCqly8MM',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
