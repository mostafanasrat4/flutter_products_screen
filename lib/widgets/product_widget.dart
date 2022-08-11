import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key, required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          //color: const Color(0xff2A2C36),
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            //color: const Color.fromARGB(255, 74, 72, 72),
            color: Color(0xff2A2C36),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '${item['title']}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6.0),
                      bottomRight: Radius.circular(6.0)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('${item['imageUrl']}'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
