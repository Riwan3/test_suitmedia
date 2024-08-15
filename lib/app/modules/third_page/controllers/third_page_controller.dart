import 'package:get/get.dart';
import 'package:test_suitmedia/model/model_api.dart';
import 'package:test_suitmedia/service/service_api.dart';

class ThirdPageController extends GetxController {
  var users = <UserModel>[].obs;
  var isLoading = false.obs;
  var currentPage = 1.obs;

  final ApiService apiService;

  ThirdPageController(this.apiService);

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    isLoading.value = true;
    try {
      final fetchedUsers = await apiService.fetchUsers(currentPage.value);
      if (fetchedUsers.isNotEmpty) {
        users.addAll(fetchedUsers);
        currentPage.value++;
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  void refreshUsers() async {
    users.clear();
    currentPage.value = 1;
    fetchUsers();
  }
}
