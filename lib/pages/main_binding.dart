import 'package:get/get.dart';
import 'package:rental_car_app/core.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<HomeController>(HomeController());
  }
}
