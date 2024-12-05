import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controllwr untuk mendemostrasikan oenggunaakn workers
class WorkerController extends GetxController {
  //variabel reaktif yang akan kita monitor
  var count = 0.obs;

  @override
  void onInit() {
    //memanggil worker setiap kali count berubah
    ever(count, (_) => print("ever: Count changed to $count"));
    //memanggil worker hanya satu kali saat count berubah untuk oertama kalinya
    once(count, (_) => print("once: Count changed to $count"));
    //memanggik workr setiap 2 detik, hanya jika ada perubahan pada count
    interval(count, (_) => print("interval: Count changed to $count"));
    time: Duration(seconds: 5);

    super.onInit
    (
    );
  }

  //fungsi untuk merubah nilai count
  void increment() {
    count++;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Workers Example")),
        body: WorkerExample(),
      ),
    );
  }
}

class WorkerExample extends StatelessWidget {
  //menginisialisasi controller menggunakan getX
  final WorkerController wc = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("Count: ${wc.count}", style: TextStyle(fontSize: 24))),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: wc.increment,
            child: Text("increment"),
          ),
        ],
      ),
    );
  }
}