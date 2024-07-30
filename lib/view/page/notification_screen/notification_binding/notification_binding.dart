import 'package:get/get.dart';
import 'package:fashion_ease/view/page/notification_screen/notification_controller/notification_controller.dart';


class NotificationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(()=>NotificationController());
  }
}