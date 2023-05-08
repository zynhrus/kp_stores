import 'package:dio/dio.dart';
import 'package:kp_stores/config/rest_api/rest_api_services.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/detail/controllers/controllers.dart';
import 'package:kp_stores/modules/home/repositories/product_repository.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.lazyPut(() => RestApiService(dio: Get.find()));
    Get.lazyPut(() => ProductRepository(restApiService: Get.find()));
    Get.lazyPut(() => DetailController(productRepository: Get.find()));
  }
}
