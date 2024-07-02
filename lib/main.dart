import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/theme/app_theme.dart';

import 'features/Auth/view/login_view.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

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

//video 01:16:35