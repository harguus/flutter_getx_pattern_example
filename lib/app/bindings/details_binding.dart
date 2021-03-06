import 'package:get/get.dart';
import '../../app/data/provider/api.dart';
import '../../app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

import '../controller/details_controller/details_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
          repository:
              MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
