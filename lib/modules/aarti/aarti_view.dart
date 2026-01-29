import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'aarti_controller.dart';

class AartiView extends GetView<AartiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('aarti'.tr)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 Morning / Evening cards
            ...controller.aartiList.map((e) => Card(
              child: ListTile(
                leading: const Icon(Icons.access_time),
                title: Text(e['title']!),
                trailing: Text(e['time']!),
                onTap: () {
                  controller.onAartiTap(e['id']!);
                },
              ),
            )),



            const SizedBox(height: 20),

            // 🔹 Aarti text
            Obx(() => controller.showAarti.value
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      controller.aartiTitle.tr,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // 🔊 TTS Controls
                // Row(
                //   children: [
                //     IconButton(
                //       iconSize: 40,
                //       icon: Icon(
                //         controller.isSpeaking.value
                //             ? Icons.stop_circle
                //             : Icons.play_circle_fill,
                //         color: Colors.orange,
                //       ),
                //       onPressed: () {
                //         controller.isSpeaking.value
                //             ? controller.stop()
                //             : controller.play();
                //       },
                //     ),
                //     Text(
                //       controller.isSpeaking.value ? 'Stop' : 'Play',
                //       style: const TextStyle(fontSize: 16),
                //     ),
                //   ],
                // ),

                const SizedBox(height: 10),

                Text(
                  controller.ramdevAarti,
                  style: const TextStyle(fontSize: 16, height: 1.6),
                ),
              ],
            )
                : const SizedBox()),

          ],
        ),
      ),
    );
  }
}
