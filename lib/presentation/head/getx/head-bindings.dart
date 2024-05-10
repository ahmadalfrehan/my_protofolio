import 'package:get/get.dart';
import 'package:protofolio/presentation/head/getx/headcontroller.dart';

class HeadBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HeadController());
  }
}
