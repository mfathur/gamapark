import 'package:flutter/material.dart';
import 'login_page.dart';
import 'themes.dart';

void main() {
  runApp(const GamaParkApp());
}

class GamaParkApp extends StatelessWidget {
  const GamaParkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = GamaParkTheme.light();
    return MaterialApp(
      title: 'Gama Park',
      theme: theme,
      home: const LoginPage(),
    );
  }
}
