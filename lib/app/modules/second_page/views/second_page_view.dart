import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_suitmedia/app/modules/first_page/controllers/first_page_controller.dart';
import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  @override
  Widget build(BuildContext context) {
    // Retrieve FirstPageController to access the name input from the first screen
    final FirstPageController firstPageController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8),

            // Display Name from First Page
            Obx(() => Text(
                  firstPageController.name.value,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 20),

            // Display Selected User Name from Third Page
            Expanded(
              child: Center(
                child: Obx(() => Text(
                      controller.selectedUserName.value.isEmpty
                          ? 'Selected User Name'
                          : controller.selectedUserName.value,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            SizedBox(height: 20),

            // Button to Navigate to Third Page
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/third-page');
              },
              child: Text(
                'Choose a User',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full-width button
                primary: Color(0xff2B637B), // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
