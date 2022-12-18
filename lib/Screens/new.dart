import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'detailsscreen.dart';
import 'itemcard.dart';
import 'product.dart';

class New extends StatelessWidget {
  final List<Product> list;
  const New({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: GridView.builder(
              itemCount: list.length,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
               ),
               itemBuilder: (context, index) => ItemCard(
                product: list[index], 
                press:(){
                  return  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              product: list[index],
                            ),
                          ),);
                }
                    )),
                
                  )
          );
  }
}