import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/color_constants.dart';
import '../../../utils/styles.dart';
import '../../../widgets/my_regular_text.dart';
import 'book_store_controller.dart';

class BookStoreView extends GetView<BookStoreController> {
  const BookStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: GridView.builder(
        itemCount: controller.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final item = controller.products[index];

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              children: [

                // IMAGE
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11),
                    ),
                    child: Image.asset(
                      item.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // NAME + PRICE
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                    color: ColorConstant.greyDark,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyRegularText(
                        label: item.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        align: TextAlign.center,
                        style: Styles.white14W600,
                      ),
                      SizedBox(height: 4.h),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: ColorConstant.sendGreen,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: MyRegularText(
                          label: "From Rs. ${item.price}",
                          align: TextAlign.start,
                          style: Styles.white14W600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
