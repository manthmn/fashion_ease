import 'package:get/get.dart';
import 'package:fashion_ease/view/page/profile_screen/profile_controller/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileController());
    //Get.lazyPut<ProfileController>(() => ProfileController());
  }
}