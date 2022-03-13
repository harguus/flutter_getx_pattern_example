import 'package:get/get.dart';

// import '../bindings/details_binding.dart';
import '../ui/android/home/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.initial,
      page: () => const HomePage(),
    ),
    // GetPage(
    //   name: Routes.details,
    //   page: () => DetailsPage(),
    //   binding: DetailsBinding(),
    // ), //dependencias de details via rota
  ];
}
