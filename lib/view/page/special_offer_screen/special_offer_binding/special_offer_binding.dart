import 'package:get/get.dart';
import 'package:fashion_ease/view/page/profile_screen/profile_controller/profile_controller.dart';
import 'package:fashion_ease/view/page/special_offer_screen/special_offer_controller/special_offer_controller.dart';

class SpecialOfferBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SpecialOfferController>(()=> SpecialOfferController());
  }
}