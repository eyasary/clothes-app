import 'package:flutter/material.dart';
import 'constants.dart';
import 'product.dart';
class ColorAndSize extends StatelessWidget {
 const ColorAndSize({Key? key,required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Color"),
              Row(
                children: <Widget>[
                  CircleColor(
                    color: product.color,
                    isSelected: true,
                  ),
                  const CircleColor(color: Color(0xFFF8C078)),
                  const CircleColor(color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Size"),
              Text("${product.size} cm" ,style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
            ],
          )
        ),
      ],
    );
  }
}
class CircleColor extends StatelessWidget {
  final Color color;
  final bool isSelected;
const CircleColor({Key? key,required this.color,this.isSelected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        right:10,
      ),
      padding: const EdgeInsets.all(2.5),
      height:MediaQuery.of(context).size.height/15,
      width:MediaQuery.of(context).size.width/15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}


