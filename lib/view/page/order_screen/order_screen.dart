import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fashion_ease/utils/size_config.dart';
import 'package:fashion_ease/view/components/navigator/app_pages.dart';
import 'package:fashion_ease/view/components/widget/custom_text_view.dart';
import 'package:fashion_ease/view/components/widget/my_cart/cart_item.dart';
import 'package:fashion_ease/view/components/widget/my_cart/custom_my_cart_footer.dart';
import 'package:fashion_ease/view/page/order_screen/tabs/complete_order_tab.dart';
import 'package:fashion_ease/view/page/order_screen/tabs/incomplete_order_tab.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              leading: Center(
                child: CustomTextView(
                    text: 'My Order',
                    fontSize: SizeConfig.textScaleFactor! * 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leadingWidth: SizeConfig.width! * 0.5,
              actions: [
                IconButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.searchProductScreen);
                    },
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.black,
                    )),
              ],
              bottom:  const TabBar(
                tabs:  [
                  Tab(
                    text: "On going",
                  ),
                  Tab(
                    text: "Complete",
                  ),
                ],
                labelColor: Colors.black,
                indicatorColor: Colors.black,
              ),
              backgroundColor: Colors.white,
              //bottomOpacity: 0.0,
              elevation: 0.0,
            ),
            body: const TabBarView(
              children: [
                InCompleteOrderTab(),
                CompleteOrderTab()
              ],
            ),
          ),
        ));
  }
}
