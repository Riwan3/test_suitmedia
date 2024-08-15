import 'package:get/get.dart';
import 'package:test_suitmedia/service/service_api.dart';
import '../controllers/third_page_controller.dart';

class ThirdPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiService());
    Get.lazyPut<ThirdPageController>(
        () => ThirdPageController(Get.find<ApiService>()));
  }
}
