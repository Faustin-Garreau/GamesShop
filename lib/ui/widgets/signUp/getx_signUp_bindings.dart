import 'package:get/get.dart';

class GetxSignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxSignupBindings());
  }
}
