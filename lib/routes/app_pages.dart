import 'package:get/route_manager.dart';
import 'package:rental_car_app/core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MainView(),
      binding: MainBinding(),
    ),
  ];
}
