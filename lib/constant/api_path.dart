class ApiPath {
  ApiPath._();
  static const String products = "/products";
  static String productById(int productId) => "/products/$productId";
}
