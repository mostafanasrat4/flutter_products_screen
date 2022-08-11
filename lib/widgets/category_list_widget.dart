import 'package:flutter/material.dart';
import 'package:flutter_products_screen/widgets/product_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key, required this.products}) : super(key: key);

  final List products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.red,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'SUMMER SALES',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      'Up to 50% off',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: ((context, index) {
                return ProductWidget(item: products[index]);
              }),
            )
          ],
        ));
  }
}
