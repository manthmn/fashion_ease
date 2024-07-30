import 'package:get/get.dart';
import 'package:fashion_ease/view/page/auth/login_screen/login_controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(()=> LoginController());
  }
}