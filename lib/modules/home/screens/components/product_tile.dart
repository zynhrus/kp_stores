import 'package:kp_stores/main.import.dart';
import 'package:kp_stores/main.library.dart';
import 'package:kp_stores/modules/detail/detail.dart';
import 'package:kp_stores/modules/home/models/models.dart';

class ProductTile extends StatelessWidget {
  final ProductModel productData;

  const ProductTile({
    Key? key,
    required this.productData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.to(DetailScreen(product: productData), binding: DetailBinding()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImagePlaceholder(
                height: 90,
                width: 90,
                imageFit: BoxFit.fill,
                borderRadius: BorderRadius.circular(8),
                imageUrl: productData.image,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productData.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3),
                        SizedBox(
                          height: 40,
                          child: Text(
                            productData.description,
                            maxLines: 2,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "\$${productData.price}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget loader() {
    return const _BuildLoader();
  }
}

class _BuildLoader extends StatelessWidget {
  const _BuildLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SkeletonLoaderSquare(
              height: 90,
              width: 90,
              roundedRadius: 8,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SkeletonLoaderSquare(width: 60, height: 10),
                      SizedBox(height: 3),
                      SkeletonLoaderSquare(width: double.infinity, height: 40),
                      SizedBox(height: 3),
                      SkeletonLoaderSquare(width: 60, height: 15),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SkeletonLoaderSquare(width: 90, height: 25),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
