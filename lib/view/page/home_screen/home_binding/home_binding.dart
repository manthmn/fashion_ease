import 'package:get/get.dart';
import 'package:fashion_ease/view/page/home_screen/home_controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}