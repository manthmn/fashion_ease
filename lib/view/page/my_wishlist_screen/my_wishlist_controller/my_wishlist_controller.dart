import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fashion_ease/db/db_model/favorite_product.dart';
import 'package:fashion_ease/db/favorite_db_operation/favorite_db_operation.dart';
import 'package:fashion_ease/model/product/product_item.dart';
import 'package:fashion_ease/utils/conversion.dart';

class MyWishlistController extends GetxController {
  var listOfMyWishListProduct = <FavoriteProduct>[].obs;
  ScrollController myWishListController = ScrollController();

  @override
  Future<void> onInit() async {
    super.onInit();
    _getAllProductData();
  }

  /// get all Habits
  void _getAllProductData() async {
    listOfMyWishListProduct.value =
        await FavoriteDbOperation.instance.getProductsList();
  }

  ProductItem getDataFormat(FavoriteProduct productItem) {
    final product = ProductItem(
        id: productItem.id,
        title: productItem.title,
        price: productItem.price,
        description: productItem.description,
        category: Conversion().categoryString(category: productItem.category),
        images: Conversion().imageUrl(images: productItem.images));
    return product;
  }
}
