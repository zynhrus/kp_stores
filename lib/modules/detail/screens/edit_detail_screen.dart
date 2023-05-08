import 'package:kp_stores/main.import.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/detail/controllers/controllers.dart';
import 'package:kp_stores/modules/home/home.dart';

class EditDetailScreen extends StatefulWidget {
  final ProductModel product;

  const EditDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<EditDetailScreen> createState() => _EditDetailScreenState();
}

class _EditDetailScreenState extends State<EditDetailScreen> {
  final controller = Get.find<DetailController>();

  final productTitleController = TextEditingController();
  final productDescController = TextEditingController();
  final productPriceController = TextEditingController();
  final productCategoryController = TextEditingController();
  final productImageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    productTitleController.text = widget.product.title;
    productDescController.text = widget.product.description;
    productPriceController.text = widget.product.price.toString();
    productCategoryController.text = widget.product.category;
    productImageController.text = widget.product.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Product"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextField(
                name: 'Title',
                hint: "Edit Title",
                controller: productTitleController,
              ),
              CustomTextField(
                name: 'Description',
                hint: "Edit Description",
                controller: productDescController,
              ),
              CustomTextField(
                name: 'Price',
                hint: "Edit Price",
                controller: productPriceController,
              ),
              CustomTextField(
                name: 'Category',
                hint: "Edit Category",
                controller: productCategoryController,
              ),
              CustomTextField(
                name: 'Image',
                hint: "Edit Image",
                controller: productImageController,
              ),
              FilledButton(
                onPressed: () {
                  final editedProduct = widget.product.copyWith(
                    category: productCategoryController.text,
                    description: productDescController.text,
                    image: productImageController.text,
                    price: double.parse(productPriceController.text),
                    title: productTitleController.text,
                  );
                  controller
                      .editProduct(editedProduct)
                      .then((value) => Get.back(result: editedProduct));
                },
                child: const Text("Edit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
