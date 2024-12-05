import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("bottom sheet contoh")),
        body: BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  padding: EdgeInsets.all(16),
                  child: Text("ini adalah normal bottom sheet"),
                ),
              );
            },
            child: Text("show normal bottom sheet"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  color: Colors.amberAccent,
                  padding: EdgeInsets.all(16),
                  child: Text("ini adalah getx bottom sheet"),
                ),
              );
            },
            child: Text("show getx bottom sheet"),
          ),
        ],
      ),
    );
  }
}