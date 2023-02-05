import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/Controller.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  //String title = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments[0];
    final dataController = Get.find<DataController>();
    dataController.companyName.value = args;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dataController.companyName.value,
              style: const TextStyle(fontSize: 40, color: Colors.white)),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: () => Get.back(),
            child: const Icon(Icons.arrow_back),
          ),
        ],
      )),
    );
  }
}
