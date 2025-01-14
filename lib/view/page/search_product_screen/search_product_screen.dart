import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fashion_ease/utils/size_config.dart';
import 'package:fashion_ease/utils/store_user_sessions/store_user_sessions.dart';
import 'package:fashion_ease/view/components/navigator/app_pages.dart';
import 'package:fashion_ease/view/components/widget/home/custom_category_item.dart';
import 'package:fashion_ease/view/components/widget/search_product/custom_search_bar_field.dart';

class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const PageScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              expandedHeight: SizeConfig.height!*0.1,
              collapsedHeight: SizeConfig.height!*0.1,
              flexibleSpace: Container(
                margin: const EdgeInsets.only(top: 16,right: 12,left: 12),
                child: CustomSearchBarField(hint: 'Search',
                  userInput: TextEditingController(), onTap: () {
                  showSearchFilter();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// BOTTOM SHEET
  showSearchFilter() {
    Get.bottomSheet(
      Container(
        height: 330,
        padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
        child: Column(
          children: [
            CustomCategoryItem(
              title: 'Edit Profile',
              icon: 'assets/shoes',
              onTap: () {
                Future.delayed(Duration.zero, () {
                  Get.back();
                }).then((value) {
                  Get.toNamed('/edit-profile-page');
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomCategoryItem(
              title: 'Archive',
              icon: 'assets/shoes',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomCategoryItem(
              title: 'Invite Friends',
              icon: 'assets/shoes',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomCategoryItem(
              title: 'Settings',
              icon: 'assets/shoes',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomCategoryItem(
              title: 'Log Out',
              icon: 'assets/shoes',
              onTap: () {
                final storage = StoreUserSessions();
                storage.deleteAllInfo();
                Get.toNamed(AppRoutes.startUpScreen);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
