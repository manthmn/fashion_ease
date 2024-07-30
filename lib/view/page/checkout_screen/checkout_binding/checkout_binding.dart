import 'package:get/get.dart';
import 'package:fashion_ease/view/page/checkout_screen/checkout_controller/checkout_controller.dart';


class CheckoutBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(()=>CheckoutController());
  }
}