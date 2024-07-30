import 'package:get/get.dart';
import 'package:fashion_ease/view/page/view_single_category_screen/view_single_category_controller/view_single_category_controller.dart';


class ViewSingleCategoryBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ViewSingleCategoryController>(()=>ViewSingleCategoryController());
  }
}