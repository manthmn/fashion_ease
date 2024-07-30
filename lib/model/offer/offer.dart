import 'package:fashion_ease/model/product/product_item.dart';

class Offer{
  Offer({required this.offerMassage, required this.item,required this.offerPercentage});
  final String offerPercentage;
  final String offerMassage;
  final ProductItem item;
}