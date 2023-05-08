import 'package:kp_stores/main.import.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ProductBinding(),
      home: const HomeScreen(),
      getPages: AppPages.pages,
    );
  }
}
