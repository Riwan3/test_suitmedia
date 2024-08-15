part of 'app_pages.dart'; // Menyatakan bahwa ini adalah bagian dari 'app_pages.dart'

abstract class Routes {
  Routes._(); // Private constructor untuk mencegah instansiasi
  static const FIRST_PAGE = '/first-page'; // Definisi route
  static const SECOND_PAGE = _Paths.SECOND_PAGE;
  static const THIRD_PAGE = _Paths.THIRD_PAGE;
}

abstract class _Paths {
  _Paths._(); // Private constructor
  static const FIRST_PAGE = Routes.FIRST_PAGE; // Gunakan konstanta dari Routes
  static const SECOND_PAGE = '/second-page';
  static const THIRD_PAGE = '/third-page';
}
