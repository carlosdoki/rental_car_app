import '../core.dart';

class CarService {
  List<Car> getCarList() {
    return <Car>[
      Car(
        "Land Rover",
        "Discovery",
        2500,
        "Weekly",
        [
          "assets/images/cars/landrover_0.jpeg",
          "assets/images/cars/landrover_1.jpeg",
          "assets/images/cars/landrover_2.jpeg"
        ],
      ),
      Car(
        "Citroen",
        "Picasso",
        1200,
        "Monthy",
        [
          "assets/images/cars/citroen_0.jpeg",
          "assets/images/cars/citroen_1.jpeg",
          "assets/images/cars/citroen_2.jpeg"
        ],
      ),
    ];
  }
}
