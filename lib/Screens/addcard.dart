import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);
  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  int count=0;
  int nb=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Container(
            width:MediaQuery.of(context).size.width/8,
            height: MediaQuery.of(context).size.height/22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey,

              )

            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  if(count>0)
                  {
                    count--;
                    nb=count;
                  }
                });
              },
              icon: Icon(Icons.remove)),
           ),
            Container(
            width:MediaQuery.of(context).size.width/8,
            height: MediaQuery.of(context).size.height/22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.transparent,

              )

            ),
            child:Center(child: Text(count.toString().padLeft(2,"0"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
           ),
           Container(
            width:MediaQuery.of(context).size.width/8,
            height: MediaQuery.of(context).size.height/22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey,

              )

            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                    nb=count;
                    ;
                  });
                },
                icon: Center(child: Icon(Icons.add))),
            ),
            
           ),
      ],
    );

  }
}

