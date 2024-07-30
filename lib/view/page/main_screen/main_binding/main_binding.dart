import 'package:get/get.dart';
import 'package:fashion_ease/view/page/cart_screen/cart_binding/cart_binding.dart';
import 'package:fashion_ease/view/page/home_screen/home_binding/home_binding.dart';
import 'package:fashion_ease/view/page/main_screen/main_controller/main_controller.dart';
import 'package:fashion_ease/view/page/profile_screen/profile_binding/profile_binding.dart';
import 'package:fashion_ease/view/page/wallet_screen/wallet_binding/wallet_binding.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainController>(()=> MainController());
    HomeBinding().dependencies();
    ProfileBinding().dependencies();
    CartBinding().dependencies();
    WalletBinding().dependencies();
  }
}