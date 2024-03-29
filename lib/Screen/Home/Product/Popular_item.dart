import 'package:flutter/cupertino.dart';
import 'package:demo_f/model/Product_list.dart';

class PopularItem extends StatelessWidget{
  final Product product;
  const PopularItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFAFAFA),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(
             product.thumbnail ?? "" ,
            //product!=null?product.thumbnail:""
            width: 140,
            height:100,
          ),
          Text(product.title??""),
        ],
      ),
    );
  }
}