import 'package:flutter/material.dart';
import 'package:flutter_products_screen/widgets/product_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List products = [
    {
      'title': 'New',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/715c/827c/e012b7c12e4b2a5bc61b8683ec894a9b?Expires=1661126400&Signature=ds~E0IMJBZcZACy-d8B5P5ftOSiKRKdd6LYxxFt1JjE~KJH~LTxML6R2bNkMGRdaGhpwxaKyF3sZWlcCI6f2PW6PdkzdUdTi5rlbExJwx7u~JEpbd2AhekBtUG7Spz9dRFkLqUSjOazz9wixx1uvK3ZxwAhd0V8paV3CeCHg6VbY0J92dBf-vsCqqfUuteeE95cdV8O8DkDCM8yk2mKJKnkSIG08rPEY7rZlxUXIGD~~4~TW6LSwadhYVVJ9AUIE-M4P8iK1vjlyurwPglRjdy34wfpdtZ96Pt~hoXHYDEKYKVaV-NiQKkAJ3B8PJum-qH3KjixsU1FvzC8RR4LNJg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/020f/c601/8d2de9e19bc84c5911cf56db5516230c?Expires=1661126400&Signature=e10X8G8O-fmT9y2raBx1IaXb94MN56zzjW6E~ANTkgUDgLt1z6lmZ25ZFLw0SyNXHiUBkwqE9ndTXI7awzoBhVXKpWlMmnS54h6o5rfaH7nsrejNyUGdMXQ9~d~h3kqBRWqeG9~YVwuOdYwTpdPDkEiSd~VSblYZQz6cf1beBIitx~qkMXPzeW88rCOswAMgz7~wsQjEgOlb6beUncPc~JhP3T9jyjR4aawqIMwmeXi079vZtQG7S6ka6Eq43Zq6PB06hythtBJcV3N1uK8bRDFKN0R013MHzAyBvMrci80IHeXFCWwfJ9rs8kU-qRwVzUmeDAO4r7j3gzAn~a~w7g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Shoes',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/ef74/9cf9/46b19562fcd50e353f20c0b75c070865?Expires=1661126400&Signature=UBvQe01getfEnzo3LHogdXkWQuFM9Qxwakmp84Fplfrsl3G1YmNYw8dQdFs82ai6lLatK9hk1pa1~2slrZyHIudCwkt1r6CKPMW4YDzDMXAR5TruYTosNCoOsgU~CtvRfovWLtCgH1zHyzkFsLVOCUz~oRYY8f8SzkLwMNmIG8F1FM6XiR5EH5-kIarYDfFTledYhccUR37aPzH5b39fT4tQsSgxp1SzSoXToLYa~FVXKYQFBsfjkFm15rZ2kQiiEEmzJImSlw3QR6FWk3aJsZjA4nyEp9XGS16y5vqJERBxZmXcahEqtdRNTMMFdf1Iou2FHWGYth5cQe-h~PuTRQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Accesories',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/5bfc/9b2c/577233e2c04f0024ec9ea69388017eaf?Expires=1661126400&Signature=esQP~6rPACgGBM9y0fpbJOjr8qYEFzFT485ilijrimrruh8kOYULDC-yRMazVyYpWSkJdngqZGQfJoCWfx4Z6Y41umZIzStJ0X8xJsQG0vWXidFW1A3vh3KOzoyA-9~L1Tji18ZAVD5WcEyzUbsOJMO1wk2V1QjZ22E4BNsZ-db-7HGbTSPM7fxFDKNEjrDpeOFxk9VLCSH65eTtg69UfBmcWBIGOJ9hSOJqY8yc8Bi2gz0-qBtMH5P8ZQFQMfhKLGSywXUsn77dgR3-d5MSB88CcAvxPrT2J22YGBI~34XUnwz3oF~U-pqQL9mtyXGimJ3pCOFY9v6KsygL0rOHcw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'New',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/715c/827c/e012b7c12e4b2a5bc61b8683ec894a9b?Expires=1661126400&Signature=ds~E0IMJBZcZACy-d8B5P5ftOSiKRKdd6LYxxFt1JjE~KJH~LTxML6R2bNkMGRdaGhpwxaKyF3sZWlcCI6f2PW6PdkzdUdTi5rlbExJwx7u~JEpbd2AhekBtUG7Spz9dRFkLqUSjOazz9wixx1uvK3ZxwAhd0V8paV3CeCHg6VbY0J92dBf-vsCqqfUuteeE95cdV8O8DkDCM8yk2mKJKnkSIG08rPEY7rZlxUXIGD~~4~TW6LSwadhYVVJ9AUIE-M4P8iK1vjlyurwPglRjdy34wfpdtZ96Pt~hoXHYDEKYKVaV-NiQKkAJ3B8PJum-qH3KjixsU1FvzC8RR4LNJg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/020f/c601/8d2de9e19bc84c5911cf56db5516230c?Expires=1661126400&Signature=e10X8G8O-fmT9y2raBx1IaXb94MN56zzjW6E~ANTkgUDgLt1z6lmZ25ZFLw0SyNXHiUBkwqE9ndTXI7awzoBhVXKpWlMmnS54h6o5rfaH7nsrejNyUGdMXQ9~d~h3kqBRWqeG9~YVwuOdYwTpdPDkEiSd~VSblYZQz6cf1beBIitx~qkMXPzeW88rCOswAMgz7~wsQjEgOlb6beUncPc~JhP3T9jyjR4aawqIMwmeXi079vZtQG7S6ka6Eq43Zq6PB06hythtBJcV3N1uK8bRDFKN0R013MHzAyBvMrci80IHeXFCWwfJ9rs8kU-qRwVzUmeDAO4r7j3gzAn~a~w7g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Shoes',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/ef74/9cf9/46b19562fcd50e353f20c0b75c070865?Expires=1661126400&Signature=UBvQe01getfEnzo3LHogdXkWQuFM9Qxwakmp84Fplfrsl3G1YmNYw8dQdFs82ai6lLatK9hk1pa1~2slrZyHIudCwkt1r6CKPMW4YDzDMXAR5TruYTosNCoOsgU~CtvRfovWLtCgH1zHyzkFsLVOCUz~oRYY8f8SzkLwMNmIG8F1FM6XiR5EH5-kIarYDfFTledYhccUR37aPzH5b39fT4tQsSgxp1SzSoXToLYa~FVXKYQFBsfjkFm15rZ2kQiiEEmzJImSlw3QR6FWk3aJsZjA4nyEp9XGS16y5vqJERBxZmXcahEqtdRNTMMFdf1Iou2FHWGYth5cQe-h~PuTRQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Accesories',
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/5bfc/9b2c/577233e2c04f0024ec9ea69388017eaf?Expires=1661126400&Signature=esQP~6rPACgGBM9y0fpbJOjr8qYEFzFT485ilijrimrruh8kOYULDC-yRMazVyYpWSkJdngqZGQfJoCWfx4Z6Y41umZIzStJ0X8xJsQG0vWXidFW1A3vh3KOzoyA-9~L1Tji18ZAVD5WcEyzUbsOJMO1wk2V1QjZ22E4BNsZ-db-7HGbTSPM7fxFDKNEjrDpeOFxk9VLCSH65eTtg69UfBmcWBIGOJ9hSOJqY8yc8Bi2gz0-qBtMH5P8ZQFQMfhKLGSywXUsn77dgR3-d5MSB88CcAvxPrT2J22YGBI~34XUnwz3oF~U-pqQL9mtyXGimJ3pCOFY9v6KsygL0rOHcw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
  ];

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
        body: SingleChildScrollView(
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
            )),
      ),
    );
  }
}
