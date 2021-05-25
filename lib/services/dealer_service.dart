import 'package:rental_car_app/core.dart';

class DealerService {
  List<Dealer> getDealerList() {
    return <Dealer>[
      Dealer(
        "Hertz",
        174,
        "assets/images/dealers/hertz.jpeg",
      ),
      Dealer(
        "Avis",
        126,
        "assets/images/dealers/avis.jpeg",
      ),
      Dealer(
        "Tesla",
        89,
        "assets/images/dealers/tesla.jpeg",
      ),
    ];
  }
}
