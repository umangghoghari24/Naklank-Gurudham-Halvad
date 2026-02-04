import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../utils/string.dart';
import '../../utils/styles.dart';
import '../../widgets/app_drawer.dart';
import 'gallery_controller.dart';
import 'gallery_detail_view.dart';
import 'gallery_model/gallery_data_model.dart';

class GalleryView extends GetView<GalleryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: MyRegularText(
          label: SC.gallery.tr,
      style: Styles.blackShade18_16W600,)),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: controller.photos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (_, index) {
          final GalleryPhoto photo = controller.photos[index];

          return GestureDetector(
            onTap: () {
              Get.to(() => GalleryDetailView(photo: photo));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// 🖼 Image
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      photo.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                /// 🏷 Title
                MyRegularText(
                  label: photo.name, // 👈 title here
                  style: Styles.black14W500,
                  align: TextAlign.center,
                  maxLines: 1,

                ),
              ],
            ),
          );
        },

      ),
    );
  }
}
