import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/product.dart';

import 'constants.dart';
import 'detailsscreen.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
 
  ItemCard({Key? key,required this.product,required this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () =>press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width:MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: product.color,

              ),
              child: RotationTransition(
                turns:AlwaysStoppedAnimation(product.value),
                child: Image.asset(product.image)),

             ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(product.title,style: TextStyle(color: secondColor),),
          ),
          Text("\$${product.price}",style: TextStyle(fontWeight: FontWeight.bold)),
         ],
      ),
    );
  }
}