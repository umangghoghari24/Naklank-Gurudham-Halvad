import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../utils/assets_path.dart';

enum AbhishekType { water, milk }

class AbhishekController extends GetxController
    with GetSingleTickerProviderStateMixin {

  var selectedType = AbhishekType.water.obs;
  var isAbhishekRunning = false.obs;

  late AnimationController animationController;
  late Animation<double> progress;

  // 🔊 Sound
  final AudioPlayer _player = AudioPlayer();
  var isSoundOn = true.obs;

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

  // ---------------- Sound Methods ----------------

  Future<void> playStarSound() async {
    if (!isSoundOn.value) return;

    await _player.play(
      AssetSource(
        AssetsPath.omNamahShivay.replaceFirst("assets/", ""),
      ),
    );
  }

  void toggleSound() {
    isSoundOn.value = !isSoundOn.value;
  }

  // ---------------- Actions ----------------

  void selectType(AbhishekType type) {
    selectedType.value = type;
    // playStarSound();
  }

  void startAbhishek() async {
    playStarSound();

    isAbhishekRunning.value = true;
    animationController.repeat();

    await Future.delayed(const Duration(seconds: 3));

    animationController.stop();
    animationController.reset();
    isAbhishekRunning.value = false;
  }

  @override
  void onClose() {
    animationController.dispose();
    _player.dispose();
    super.onClose();
  }
}
