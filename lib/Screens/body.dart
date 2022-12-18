import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/itemcard.dart';
import 'package:project2/Screens/product.dart';

import 'categories.dart';
import 'constants.dart';
import 'detailsscreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mediaHeight=MediaQuery.of(context).size.height;
    double mediaWidth=MediaQuery.of(context).size.width;
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal:20),
          child: Text("Women",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        Categories(),

          ]  );
  
      
  }
}