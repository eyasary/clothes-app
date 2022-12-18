import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/product.dart';

class ShoppingCard extends StatelessWidget {
  final int somme;
  final Product product;
  const ShoppingCard({Key? key, required this.somme, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Shopping Cart",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(onPressed: () => Navigator.pop(context),icon:Icon(Icons.arrow_back,color: Colors.grey,)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: All.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 229, 208, 208),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       // IconButton(onPressed: () => All.remove(product), icon: Icon(Icons.remove)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                            Text(somme.toString()+" \$",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                          ],
                        ),
                        Container(
                          height:150,
                          width: 200,
                          child: Image.asset(product.image)),
                        
                      ],
                    ),
                  ) ,
                ),
              );
              },
              ),
          )
        ],
      ),
    );
  }
}