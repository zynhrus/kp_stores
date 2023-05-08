import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/home/home.dart';

class DetailController extends GetxController {
  final ProductRepository productRepository;

  DetailController({required this.productRepository});

  Future<ProductModel> editProduct(ProductModel product) async {
    final editedProduct = await productRepository.updateProduct(productUpdate: product, id: product.id);

    return editedProduct;
  }

  Future<ProductModel> deleteProduct(int id) async {
    final deletedProduct = await productRepository.deleteProduct(id: id);

    print(deletedProduct);

    return deletedProduct;
  }
}
