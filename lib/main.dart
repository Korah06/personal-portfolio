import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/pages/home_page.dart';
import 'package:my_portfolio/ui/theme/color_schema.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mario Portfolio',
      theme: ThemeData(
        colorScheme: themeColorSchema,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
