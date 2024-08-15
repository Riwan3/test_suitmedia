import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/first_page_controller.dart';

class FirstPageView extends GetView<FirstPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Foreground Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // Makes the column as small as possible
                children: [
                  Image.asset(
                    'assets/ic_photo.png',
                    height: 116.0,
                  ),
                  SizedBox(
                    height: 51,
                  ),
                  // Name TextField
                  Container(
                    height: 47.0,
                    width: 310.0,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      onChanged: (value) => controller.name.value = value,
                    ),
                  ),
                  SizedBox(height: 15),

                  // Sentence TextField
                  Container(
                    height: 47.0,
                    width: 310.0,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Palindrome',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      onChanged: (value) => controller.sentence.value = value,
                    ),
                  ),
                  SizedBox(height: 45),

                  // Check Button
                  Container(
                    height: 47.0,
                    width: 310.0,
                    child: ElevatedButton(
                      onPressed: () {
                        bool result =
                            controller.isPalindrome(controller.sentence.value);
                        Get.defaultDialog(
                          title: 'Result',
                          middleText:
                              result ? 'isPalindrome' : 'not palindrome',
                        );
                      },
                      child: Text('CHECK'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity,
                            50), // Button stretches to fill width
                        primary: Color(0xff2B637B), // Background color
                        onPrimary: Colors.white, // Text color
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Next Button
                  Container(
                    height: 47.0,
                    width: 310.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/second-page');
                      },
                      child: Text('NEXT'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity,
                            50), // Button stretches to fill width
                        primary: Color(0xff2B637B), // Background color
                        onPrimary: Colors.white, // Text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
