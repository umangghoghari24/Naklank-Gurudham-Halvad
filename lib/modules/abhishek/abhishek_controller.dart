import 'package:get/get.dart';
import 'package:flutter/material.dart';

enum AbhishekType { water, milk }

class AbhishekController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var selectedType = AbhishekType.water.obs;
  var isAbhishekRunning = false.obs;

  late AnimationController animationController;
  late Animation<double> progress;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    progress = Tween<double>(begin: 0, end: 1)
        .animate(animationController);
  }

  void selectType(AbhishekType type) {
    selectedType.value = type;
  }

  void startAbhishek() async {
    isAbhishekRunning.value = true;
    animationController.repeat();

    await Future.delayed(const Duration(seconds: 15));

    animationController.stop();
    animationController.reset();
    isAbhishekRunning.value = false;

  }

  var isSoundOn = true.obs;

  void toggleSound() {
    isSoundOn.value = !isSoundOn.value;
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
