import 'package:get/get.dart';
import 'package:fashion_ease/view/page/order_screen/order_controller/order_controller.dart';


class OrderBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OrderController>(()=> OrderController());
  }
}