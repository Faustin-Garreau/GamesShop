import 'package:get/get.dart';

class GetxLoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxLoginBindings());
  }
}
