import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/app_theme.dart';
import 'features/Auth/view/login_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Demo',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
//video 02:44:38