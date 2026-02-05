import 'package:calender/widgets/app_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/color_constants.dart';
import '../../utils/styles.dart';
import '../../widgets/my_regular_text.dart';
import '../../widgets/zoomable_image.dart';
import 'donation_model/donation_data_model.dart';
import 'donation_payment_view.dart';

class DonationDetailView extends StatelessWidget {

  final DonationViewModel donation;

  const DonationDetailView({
    super.key,
    required this.donation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyRegularText(
          label: donation.title,
          style: Styles.blackShade18_16W600,
        ),
      ),

      /// BUTTON AT BOTTOM
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.greenColor,
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 3.5,
              vertical: 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          onPressed: () {
            Get.to(() => DonationPaymentView(donation: donation));
          },
          child: MyRegularText(
            label: "Donate Now",
            style: Styles.white16W600,
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: donation.images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AppIconImage(
                    height: 150.h,
                    width: 150.w,
                    fit: BoxFit.cover,
                    imagePath: donation.images[index],
                  ),
                );
              },
            ),
          ),
          // SizedBox(height: 5.h),
          Divider(
            thickness: 2,
            color: ColorConstant.orangeColor,
            endIndent: 15,indent: 15,),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MyRegularText(
                label: donation.description.tr,
                style: Styles.blackShade18_16W600,
                align: TextAlign.start,
                maxLines: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
