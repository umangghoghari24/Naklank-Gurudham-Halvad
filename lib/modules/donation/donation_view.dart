import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/color_constants.dart';
import '../../utils/styles.dart';
import '../../widgets/my_regular_text.dart';
import '../../widgets/app_drawer.dart';
import 'donation_controller.dart';
import 'donation_detail_view.dart';

class DonationViewScreen extends GetView<DonationController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConstant.whiteColor),
        backgroundColor: ColorConstant.orangeColor,
        title: MyRegularText(
          label: "Select Donation",
          style: Styles.white18W600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: controller.donations.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.70
          ),

          itemBuilder: (context, index) {
            final item = controller.donations[index];
            return GestureDetector(
              onTap: () {
                Get.to(() => DonationDetailView(donation: item));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(11),
                          topRight: Radius.circular(11),
                        ),
                        child: Image.asset(
                          item.images.first,
                          // width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration:  BoxDecoration(
                        color: ColorConstant.greyDark,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(11),
                          bottomRight: Radius.circular(11),
                        ),
                      ),
                      child: MyRegularText(
                        label: item.title.tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        align: TextAlign.center,
                        style: Styles.white16W600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
