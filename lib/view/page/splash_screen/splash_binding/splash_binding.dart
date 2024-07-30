import 'package:get/get.dart';
import 'package:fashion_ease/view/page/splash_screen/splash_controller/splash_controller.dart';


class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(()=> SplashController());
  }
}