import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'addcard.dart';

class CounterBotton extends StatelessWidget {
  const CounterBotton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AddCard(),
       /* Container(
          padding: EdgeInsets.all(8),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
               child: IconButton(
               icon: Icon(Icons.heart_broken_outlined,color: Colors.white,size: 20,),
               onPressed: () {
                 
               },
               ),
           
        )*/
      ],
    );
  }
}
