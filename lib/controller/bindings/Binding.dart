import 'package:get/get.dart';
import 'package:payapp/controller/Controller.dart';

class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }
}
