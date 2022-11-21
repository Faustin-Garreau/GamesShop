import 'package:game_shop/ui/widgets/home/getx_game_controller.dart';
import 'package:get/get.dart';

class GetxGameBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxGameController());
  }
}
