import 'package:flutter/material.dart';
import 'package:project2/Screens/product.dart';
import 'constants.dart';

class ProductDesc extends StatelessWidget {
 const ProductDesc({Key? key,required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
          ),
          SizedBox(height: kDefaultPaddin*0.7),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(product.value),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}