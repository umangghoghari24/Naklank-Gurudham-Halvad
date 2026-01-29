import 'package:calender/modules/satsang/satsang_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/language_service.dart';
import '../aarti/aarti_binding.dart';
import '../aarti/aarti_view.dart';
import '../bij/bij_binding.dart';
import '../bij/bij_view.dart';
import '../satsang/satsang_binding.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        // backgroundColor: Colors.orange,
        title: Text('app_name'.tr),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (value) {
              LanguageService.changeLanguage(value);
            },
            itemBuilder: (_) => const [
              PopupMenuItem(value: 'gu', child: Text('ગુજરાતી')),
              PopupMenuItem(value: 'hi', child: Text('हिंदी')),
              PopupMenuItem(value: 'en', child: Text('English')),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _menu(Icons.access_time, 'aarti'.tr, () {
              Get.to(() => AartiView(), binding: AartiBinding());
            }),
            const SizedBox(height: 10),

            _menu(Icons.celebration, 'bij'.tr, () {
              Get.to(() => BijView(), binding: BijBinding());
            }),
            const SizedBox(height: 10),

            _menu(Icons.play_circle_fill, 'satang'.tr, () {
              Get.to(() => SatsangView(), binding: SatsangBinding());
            }),
            const SizedBox(height: 10),

            _menu(Icons.queue_music, 'bhajan'.tr, () {}),
            const SizedBox(height: 10),

            _menu(Icons.photo_library, 'gallery'.tr ,() {}),
            const SizedBox(height: 10),

            _menu(Icons.history, 'history'.tr,() {}),
          ],
        ),
      ),

    );
  }

  Widget _menu(IconData icon, String title, VoidCallback onTap) {
    return Card(
      // color: Colors.green.shade300,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.orange, size: 30),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

}
