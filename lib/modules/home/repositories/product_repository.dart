import 'package:kp_stores/config/rest_api/rest_api_services.dart';
import 'package:kp_stores/constant/constant.dart';
import 'package:kp_stores/modules/home/models/models.dart';

class ProductRepository {
  final RestApiService restApiService;

  const ProductRepository({required this.restApiService});

  Future<List<ProductModel>> getProducts() async {
    final res = await restApiService.get(ApiPath.products);

    final products = (res.data as List<dynamic>)
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return products;
  }

  Future<ProductModel> updateProduct(
      {required int id, required ProductModel productUpdate}) async {
    final res = await restApiService.patch(
      ApiPath.productById(id),
      body: productUpdate.toJson(),
    );

    final product = ProductModel.fromJson(res.data as Map<String, dynamic>);

    return product;
  }

  Future<ProductModel> deleteProduct({required int id}) async {
    final res = await restApiService.delete(
      ApiPath.productById(id),
    );

    final product = ProductModel.fromJson(res.data as Map<String, dynamic>);

    return product;
  }
}
