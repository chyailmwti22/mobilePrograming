import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'package:jadwalku/pages/create_schedule.dart';
import 'package:jadwalku/pages/home_page.dart';
import 'package:jadwalku/pages/schedule_page.dart';
import 'package:jadwalku/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
