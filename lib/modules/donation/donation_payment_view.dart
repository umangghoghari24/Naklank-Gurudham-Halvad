import 'package:calender/utils/color_constants.dart';
import 'package:calender/widgets/app_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styles.dart';
import '../../widgets/my_regular_text.dart';
import 'donation_model/donation_data_model.dart';

class DonationPaymentView extends StatelessWidget {

  final DonationViewModel donation;

  const DonationPaymentView({super.key, required this.donation});

  @override
  Widget build(BuildContext context) {

    final List<String> detailsList =
    donation.bankDetails.split('\n');

    return Scaffold(
      appBar: AppBar(
        title:  Text("Scan & Pay"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AppIconImage(
              imagePath: donation.qrImage,
              height: 320.h,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Card(
              color: ColorConstant.greyDialog,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: detailsList.map((line) {
                    return MyRegularText(
                      label: line,
                      style: Styles.black16W400,
                      maxLines: 2,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
