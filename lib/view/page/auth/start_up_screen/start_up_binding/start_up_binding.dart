import 'package:get/get.dart';
import 'package:fashion_ease/view/page/auth/start_up_screen/start_up_controller/start_up_controller.dart';

class StartUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<StartUpController>(()=> StartUpController());
  }
}