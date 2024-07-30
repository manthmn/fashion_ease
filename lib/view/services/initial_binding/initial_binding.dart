import 'package:get/get.dart';
import 'package:fashion_ease/view/services/initial_controller/initial_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(InitialController());
  }

}