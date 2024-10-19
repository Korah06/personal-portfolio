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
        fontFamily: 'Cascadia Code',
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: themeColorSchema.primary),
          bodyMedium: TextStyle(color: themeColorSchema.primary),
          bodySmall: TextStyle(color: themeColorSchema.primary),
          headlineLarge: TextStyle(color: themeColorSchema.primary),
          headlineMedium: TextStyle(color: themeColorSchema.primary),
          headlineSmall: TextStyle(color: themeColorSchema.primary),
          displayLarge: TextStyle(color: themeColorSchema.primary),
          displayMedium: TextStyle(color: themeColorSchema.primary),
          displaySmall: TextStyle(color: themeColorSchema.primary),
          labelLarge: TextStyle(color: themeColorSchema.primary),
          labelMedium: TextStyle(color: themeColorSchema.primary),
          labelSmall: TextStyle(color: themeColorSchema.primary),
          titleLarge: TextStyle(color: themeColorSchema.primary),
          titleMedium: TextStyle(color: themeColorSchema.primary),
          titleSmall: TextStyle(color: themeColorSchema.primary),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
