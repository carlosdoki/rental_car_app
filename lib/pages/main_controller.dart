import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final pageController = PageController();
  final animationDuration = Duration(microseconds: 300);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
    Get.delete();
    super.onClose();
  }
}
