import 'package:kp_stores/main.import.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/detail/bindings/bindings.dart';
import 'package:kp_stores/modules/detail/controllers/controllers.dart';
import 'package:kp_stores/modules/detail/screens/edit_detail_screen.dart';
import 'package:kp_stores/modules/home/home.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final controller = Get.find<DetailController>();
  late ProductModel productData;

  @override
  void initState() {
    super.initState();

    productData = widget.product;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productData.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "(In 'Fake Store API' that nothing in real will update in the database when we delete and edit)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10),
              ImagePlaceholder(
                height: 200,
                width: double.infinity,
                imageFit: BoxFit.fitHeight,
                borderRadius: BorderRadius.circular(8),
                imageUrl: productData.image,
              ),
              const SizedBox(height: 20),
              Text(
                productData.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Category : ${productData.category}",
              ),
              const SizedBox(height: 5),
              if (productData.rating != null)
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(width: 5),
                    Text(
                      "${productData.rating?.rate} (${productData.rating?.count} rating)",
                    ),
                  ],
                ),
              const SizedBox(height: 5),
              Text(
                productData.description,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "delete",
              onPressed: () {
                controller.deleteProduct(productData.id).then(
                  (value) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Delete Success'),
                          content: Text('Success delete : ${value.title}'),
                        );
                      },
                    );
                  },
                );
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.delete),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: "edit",
              onPressed: () async {
                ProductModel? editedProduct = await Get.to(
                    EditDetailScreen(product: productData),
                    binding: DetailBinding());

                if (editedProduct != null) {
                  setState(() {
                    productData = editedProduct;
                  });
                }
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
