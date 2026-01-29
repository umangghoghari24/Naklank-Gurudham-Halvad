import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bij_controller.dart';

class BijView extends GetView<BijController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('bij'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'bij_title'.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: controller.bijDates.length,
                itemBuilder: (context, index) {
                  final item = controller.bijDates[index];

                  return Card(
                    child: ListTile(
                      title: Text(item['date']!),
                      trailing: Text(
                        item['month']!,
                        style: TextStyle(
                          fontSize: 18,
                          // color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
