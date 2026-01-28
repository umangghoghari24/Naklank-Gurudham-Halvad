import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../aarti/aarti_binding.dart';
import '../aarti/aarti_view.dart';
import '../bij/bij_binding.dart';
import '../bij/bij_view.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_name'.tr),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (value) {
              if (value == 'gu') Get.updateLocale(const Locale('gu', 'IN'));
              if (value == 'hi') Get.updateLocale(const Locale('hi', 'IN'));
              if (value == 'en') Get.updateLocale(const Locale('en', 'US'));
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
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            _menu(Icons.access_time, 'aarti'.tr, () {
              Get.to(() => AartiView(), binding: AartiBinding());
            }),
            _menu(
              Icons.celebration,
              'bij'.tr,
                  () {
                Get.to(() => BijView(), binding: BijBinding());
              },
            ),
            _menu(Icons.history, 'history'.tr, () {}),
            _menu(Icons.queue_music, 'bhajan'.tr, () {}),
            _menu(Icons.photo_library, 'gallery'.tr, () {}),
            _menu(Icons.photo_library, 'Satang'.tr, () {}),
          ],
        ),
      ),
    );
  }

  Widget _menu(IconData icon, String title, VoidCallback onTap) {
    return Card(
      color: Colors.grey.shade100,
      elevation: 3, // 🔹 shadow depth
      shadowColor: Colors.green.withOpacity(0.4), //  soft shade
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14), //  border radius
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14), // ripple radius
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 36, color: Colors.orange),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
