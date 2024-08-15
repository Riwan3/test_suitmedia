import 'package:get/get.dart';

class SecondPageController extends GetxController {
  var userName = ''.obs;
  var selectedUserName = ''.obs;

  void setUserName(String name) {
    userName.value = name;
  }

  void selectUser(String userName) {
    selectedUserName.value = userName;
  }
}
