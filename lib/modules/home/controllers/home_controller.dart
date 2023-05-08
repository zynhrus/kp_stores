import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/home/home.dart';

class ProductController extends GetxController
    with StateMixin<List<ProductModel>> {
  final ProductRepository productRepository;

  ProductController({required this.productRepository});

  @override
  void onInit() {
    super.onInit();
    fetchAllProduct();
  }

  void fetchAllProduct() {
    change(null, status: RxStatus.loading());
    productRepository.getProducts().then((result) {
      List<ProductModel> products = result;
      change(products, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
