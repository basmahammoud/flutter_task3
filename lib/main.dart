import 'package:flutter/material.dart';
import 'package:flutter_task3/features/home/home.dart';
import 'package:flutter_task3/core/theme/theme.dart';
import 'package:flutter_task3/features/settings/settings.dart';

import 'features/analytics/analytics.dart';
import 'features/card/card.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

     void toggleTheme(){
      setState(() {
     _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
      });
     }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      routes: {
        '/': (context) => Home(
          isDark: _themeMode == ThemeMode.dark,
          onToggleTheme: toggleTheme,),
        '/cards': (context) => CardsPage(
            isDark: _themeMode == ThemeMode.dark,
          onToggleTheme: toggleTheme,),
        '/analytic': (context) => Analyticspage(
            isDark: _themeMode == ThemeMode.dark,
          onToggleTheme:toggleTheme,),
        '/setting': (context) => Settings(
          isDark: _themeMode == ThemeMode.dark,
          onToggleTheme:toggleTheme,),
      },
      
    );
  }
}