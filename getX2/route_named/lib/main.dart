import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => SecondPage()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route named dengan GetX")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/second');
          }, 
    child: Text("pindah ke halaman kedua"),
      ),
    ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("halaman kedua")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.back();
        },
            child: Text("kembali ke Halaman Pertama"),
      ),
      ),
    );
  }
}