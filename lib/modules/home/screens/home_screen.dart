import 'package:kp_stores/main.import.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/home/controllers/controller.dart';
import 'components/components.dart';

class HomeScreen extends GetView<ProductController> {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: controller.obx(
        (data) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: data!.map((e) {
              return ProductTile(
                productData: e,
              );
            }).toList(),
          ),
        ),
        onEmpty: _buildEmpty(context),
        onLoading: _buildLoading(),
        onError: (error) => _buildError(error),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: const Text(
        "List Product",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: List.generate(8, (index) => ProductTile.loader()),
      ),
    );
  }

  Widget _buildError(String? error) {
    return Center(
      child: Text("Error : $error"),
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return Center(
      child: Text(
        "Produk Kosong",
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
