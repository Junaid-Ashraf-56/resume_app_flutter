import 'package:flutter/material.dart';
import 'package:my_resume_app/constants/appcolors.dart';
import 'package:my_resume_app/screens/navscreen.dart';
import 'package:my_resume_app/theme/theme_config.dart';

import 'theme/theme_config.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: AppColors.black),
          foregroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      debugShowCheckedModeBanner: false,
      home: const NavScreen(),
    );
  }
}
