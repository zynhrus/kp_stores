import 'package:kp_stores/config/routes/route_names.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/home/home.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => const HomeScreen()),
  ];
}
