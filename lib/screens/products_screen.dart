import 'package:flutter/material.dart';
import 'package:flutter_products_screen/models/data.dart';
import 'package:flutter_products_screen/widgets/category_list_widget.dart';
import 'package:flutter_products_screen/widgets/product_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List women_products = AppData.women_products;
  List men_products = AppData.men_products;
  List kids_products = AppData.kids_products;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff1E1F28),
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xff1E1F28),
            elevation: 0.0,
            actions: [
              IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: const TabBar(indicatorColor: Colors.amber, tabs: [
              Tab(
                text: 'Women',
              ),
              Tab(
                text: 'Men',
              ),
              Tab(
                text: 'Kids',
              )
            ])),
        body: TabBarView(
          children: [
            CategoryListWidget(products: women_products),
            CategoryListWidget(products: men_products),
            CategoryListWidget(products: kids_products),
          ],
        ),
      ),
    );
  }
}
