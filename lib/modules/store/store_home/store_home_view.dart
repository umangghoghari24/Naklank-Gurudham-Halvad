import 'package:calender/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/launcher.dart';
import '../../../utils/string.dart';
import '../../../utils/styles.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/my_regular_text.dart';
import '../book_store/book_store_controller.dart';
import '../book_store/book_store_view.dart';
import '../prasadi_store/prasadi_store_controller.dart';
import '../prasadi_store/prasadi_store_view.dart';

class StoreHomeView extends StatelessWidget {
  const StoreHomeView({super.key});

  @override
  Widget build(BuildContext context) {

    // 🔥 ADD THESE TWO LINES
    Get.put(PrasadiStoreController());
    Get.put(BookStoreController());

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.orangeColor,
          iconTheme: IconThemeData(color: ColorConstant.whiteColor),
          title: MyRegularText(
            label: SC.store.tr,
            style: Styles.white18W600,
          ),

          actions: [
            IconButton(
              icon: const Icon(Icons.contact_page),
              onPressed: () {
                _showStoreContactSheet(context);
              },
            )
          ],
        ),

        drawer: AppDrawer(),
        body: Column(
          children: [
            /// TAB BAR BOX
            Stack(
              alignment: Alignment.center,
              children: [
                /// TAB BAR
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    color: ColorConstant.orangeColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: ColorConstant.sendGreen,
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                    labelColor: ColorConstant.whiteColor,
                    // unselectedLabelColor: ColorConstant.black,
                    tabs: const [
                      Center(child: Tab(text: "Prasadi",)),
                      Center(child: Tab(text: "Books")),
                    ],
                  ),
                ),

                /// CENTER ICON
                Icon(
                  Icons.swipe,
                  size: 20,
                  color: ColorConstant.whiteColor,
                ),
              ],
            ),

            /// TAB VIEW
            Expanded(
              child: TabBarView(
                children: [
                  PrasadiStoreView(),
                  BookStoreView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void _showStoreContactSheet(BuildContext context) {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: ColorConstant.orangeColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            MyRegularText(
              label: "Contact Store",
              style: Styles.white18_14W400,
            ),

            SizedBox(height: 20.h),

            ListTile(
              leading: Icon(Icons.call, color: ColorConstant.greenColor,),
              title: MyRegularText(label: "Call", style: Styles.white16W600,),
              onTap: () {
                launchUrl(Uri.parse("tel:7046151045"));
              },
            ),

            ListTile(
              leading: Icon(Icons.chat, color: ColorConstant.greenColor),
              title: MyRegularText(
                  label: "WhatsApp",
              style: Styles.white16W600,),
              onTap: () {
                openWhatsApp(
                  "7046151045",
                  "Hello, I want to know about store products",
                );
              },
            ),


          ],
        ),
      ),
    );
  }

}
