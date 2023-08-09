import 'package:flutter/material.dart';
import 'package:uas_roy/pages/gallery.dart';
import 'package:uas_roy/pages/profile_page.dart';
import 'pages/login_page.dart';
import 'package:uas_roy/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        'login': (context) => LoginPage(),
        'dashboard': (context) => DashboardScreen(),
        'profile': (context) => ProfilePage(),
        'galerry': (context) => Gallery(),
      },
    );
  }
}
