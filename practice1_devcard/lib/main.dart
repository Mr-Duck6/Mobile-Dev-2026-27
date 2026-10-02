import 'package:flutter/material.dart';
import 'home_page.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget 
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> 
{
 
  bool _isDarkMode = false;

  void _toggleTheme() 
  {
    setState(() 
    {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context)
   {
    return MaterialApp(
      title: 'Developer Business Card',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(onThemeChanged: _toggleTheme),
    );
  }
}