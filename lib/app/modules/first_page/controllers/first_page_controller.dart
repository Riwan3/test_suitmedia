import 'package:get/get.dart';

class FirstPageController extends GetxController {
  var name = ''.obs;
  var sentence = ''.obs;

  bool isPalindrome(String text) {
    String processed = text.replaceAll(RegExp('r\s+'), '').toLowerCase();
    return processed == processed.split('').reversed.join('');
  }
}
