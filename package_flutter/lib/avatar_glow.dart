import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:package_flutter/main.dart';
import 'package:package_flutter/pages/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Glow"),
      ),
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.red,
          duration: Duration(milliseconds: 500),
          child: Material(
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
    backgroundImage: NetworkImage('https://picsum.photos/200'),
    backgroundColor: Colors.grey[100],
    radius: 75.0,
          ),
        ),
      ),
    ),
    );
  }
  }