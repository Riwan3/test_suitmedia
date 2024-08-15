import 'package:get/get.dart';

import 'package:test_suitmedia/app/modules/first_page/bindings/first_page_binding.dart';
import 'package:test_suitmedia/app/modules/first_page/views/first_page_view.dart';
import 'package:test_suitmedia/app/modules/second_page/bindings/second_page_binding.dart';
import 'package:test_suitmedia/app/modules/second_page/views/second_page_view.dart';
import 'package:test_suitmedia/app/modules/third_page/bindings/third_page_binding.dart';
import 'package:test_suitmedia/app/modules/third_page/views/third_page_view.dart';

part 'app_routes.dart'; // Menghubungkan dengan file app_routes.dart

class AppPages {
  AppPages._(); // Private constructor untuk mencegah instansiasi

  static const INITIAL = Routes.FIRST_PAGE; // Menentukan route awal

  static final routes = [
    GetPage(
      name: _Paths.FIRST_PAGE, // Nama route
      page: () => FirstPageView(), // Halaman yang akan ditampilkan
      binding:
          FirstPageBinding(), // Binding untuk menghubungkan controller dan view
    ),
    GetPage(
      name: _Paths.SECOND_PAGE,
      page: () => SecondPageView(),
      binding: SecondPageBinding(),
    ),
    GetPage(
      name: _Paths.THIRD_PAGE,
      page: () => ThirdPageView(),
      binding: ThirdPageBinding(),
    ),
  ];
}
