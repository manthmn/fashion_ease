import 'package:get/get.dart';
import 'package:fashion_ease/view/page/auth/sign_up_screen/sign_up_controller/sign_up_controller.dart';


class SignUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }

}