import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/ShoppingCard.dart';
import 'package:project2/Screens/product.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
           icon: Icon(Icons.arrow_back,color: Colors.grey,),
           onPressed: () {
            Navigator.pop(context);
           },
           ),
          actions: [
           IconButton(
            icon: Icon(Icons.search,color: Colors.grey,),
             onPressed: () {},
            ),
           IconButton(
            icon: Icon(Icons.add_shopping_cart_outlined,color: Colors.grey,),
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCard(somme: 0, product: products[0]),));
            },
            ),
          ],
         ),
         body: Body(),
    );
    
  }

}