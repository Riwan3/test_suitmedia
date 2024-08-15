import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_suitmedia/app/modules/second_page/controllers/second_page_controller.dart';
import '../controllers/third_page_controller.dart';

class ThirdPageView extends GetView<ThirdPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Third Screen',
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
      body: Obx(() {
        if (controller.isLoading.value && controller.users.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.users.isEmpty) {
          return Center(child: Text('No users found.'));
        } else {
          return RefreshIndicator(
            onRefresh: () async {
              controller.refreshUsers();
            },
            child: ListView.builder(
              itemCount: controller.users.length,
              itemBuilder: (context, index) {
                final user = controller.users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text(user.email),
                  onTap: () {
                    // Handle user selection
                    Get.back();
                    final secondPageController =
                        Get.find<SecondPageController>();
                    secondPageController
                        .selectUser('${user.firstName} ${user.lastName}');
                  },
                );
              },
            ),
          );
        }
      }),
    );
  }
}
