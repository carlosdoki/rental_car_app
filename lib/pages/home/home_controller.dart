import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rental_car_app/services/dealer_service.dart';

import '../../core.dart';

class HomeController extends GetxController {
  List<Car> cars = [];
  List<Dealer> dealers = [];
  late Car displayCar;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    cars = CarService().getCarList();
    dealers = DealerService().getDealerList();
    displayCar = cars[1];
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
