import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/launcher.dart';
import 'satsang_controller.dart';

class SatsangView extends GetView<SatsangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('satang'.tr)),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: controller.links.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(
                Icons.play_circle_fill,
                color: Colors.red,
                size: 36,
              ),
              title: Text('Satsang ${index + 1}'),
              subtitle: const Text('Open in YouTube'),
              trailing: const Icon(Icons.open_in_new),
              onTap: () {
                openYoutube(controller.links[index]); // 🔥 direct YT
              },
            ),
          );
        },
      ),
    );
  }
}
