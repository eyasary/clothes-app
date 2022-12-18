import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/addtocard.dart';
import 'package:project2/Screens/product.dart';
import 'package:project2/Screens/productdesc.dart';

import 'colorandsize.dart';
import 'constants.dart';
import 'counterbutton.dart';
import 'description.dart';

class ElementScreen extends StatelessWidget {
  final Product product;
   const ElementScreen({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
         children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                  bottom:0,
                  child: Container(
                         width:size.width,
                         height:size.height/1.5,
                        padding: EdgeInsets.only(
                          top:size.height * 0.12,
                          left:size.width /10,
                          right: size.width /10,
                        ),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            ColorAndSize(product: product),
                            const SizedBox(height:10),
                            const Description(),
                            const SizedBox(height:10),
                            const CounterBotton(),
                            const SizedBox(height:20 ),
                            AddToCard(product: product, somme: 0)
                          ],
                        ),
                  ),
                ),
                ProductDesc(product: product)
              ],
            ),
          )
         ],
      ),
   );
  }
}