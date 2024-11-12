import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMPLE PORTODIT',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white, // Warna teks utama menjadi putih
            displayColor: Colors.white, // Warna untuk teks besar seperti header
          ),
        ),
        scaffoldBackgroundColor: Colors.black87, // Latar belakang untuk mode gelap
      ),
      themeMode: _themeMode,
      home: AboutPage(onThemeToggle: _toggleTheme),
    );
  }
}
