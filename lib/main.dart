import 'package:flutter/material.dart';
import 'package:yocial/features/auth/view/login_view.dart';

import 'package:yocial/theme/color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

/// The main app widget.
class MyApp extends StatelessWidget {
  /// Creates a [MyApp].
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yocial',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const LoginView(),
    );
  }
}
