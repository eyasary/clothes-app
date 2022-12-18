import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/new.dart';
import 'package:project2/Screens/product.dart';

import 'ShoppingCard.dart';
import 'constants.dart';

class AddToCard extends StatelessWidget {
  final Product product;
  final int somme;
  const AddToCard({Key? key, required this.product, required this.somme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int s=somme;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right:20),
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.height/15,
         // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border:Border.all(
              color: product.color,
            )
        
          ),
          child: Icon(Icons.add_shopping_cart_outlined,color: Colors.grey[400],),
         ),
           Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height/15,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {
                },
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
         
      ],
    );
}
}