import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/body.dart';
import 'package:project2/Screens/elementscreen.dart';
import 'package:project2/Screens/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key , required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color ,
      appBar:AppBar(
          backgroundColor: product.color,
          elevation: 0,
          leading: IconButton(
           icon: Icon(Icons.arrow_back,color: Colors.white,),
           onPressed: () => Navigator.pop(context),
           ),
          actions: [
           IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
             onPressed: () {},
            ),
           IconButton(
            icon: Icon(Icons.add_shopping_cart_outlined,color: Colors.white,),
            onPressed: () {},
            ),
             SizedBox(width: 10)
          ],
         ),
      body: ElementScreen(product: product),
    );
  }
}