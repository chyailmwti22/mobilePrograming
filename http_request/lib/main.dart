import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    id = "";
    email = "";
    name = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP GET"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ID : $id",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "ID : $email",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "ID : $name",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async {
                var myresponse = await myhttp
                    .get(Uri.parse("https://reqres.in/api/users/5"));
                if (myresponse.statusCode == 200) {
                  //berhasil get data
                  print("BERHASIL GET DATA");
                  Map<String, dynamic> data =
                      json.decode(myresponse.body) as Map<String, dynamic>;
                  print(data["data"]);
                  setState(() {
                    id = data["data"]["id"].toString();
                    email = data["data"]["email"].toString();
                    name =
                        "${data["data"]["first_name"]} ${data["data"]["last_name"]}";
                  });
                } else {
                  //tidak berhasil get data
                  print("ERROR ${myresponse.statusCode}");
                }
              },
              child: Text("GET DATA"),
            ),
          ],
        ),
      ),
    );
  }
}
