import 'package:get/get.dart';
import 'package:fashion_ease/view/page/cart_screen/cart_controller/cart_controller.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CartController());
    //Get.lazyPut<CartController>(()=> CartController());
  }
}