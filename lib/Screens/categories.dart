import 'package:flutter/material.dart';
import 'package:project2/Screens/constants.dart';
import 'package:project2/Screens/new.dart';
import 'package:project2/Screens/product.dart';

/*
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? primaryColor : secondColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}*/
class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
     final categories = [
      {"title":"Hand bag","list":products},
      {"title":"FootWear","list":shoes}
      ];
    return Expanded(
      child: SingleChildScrollView(
        child: DefaultTabController(
          initialIndex: 0,
          length: categories.length,
          child: Column(
            children: [
               TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
               labelColor: Colors.black,
                tabs:categories.map((e) => Tab(icon: Text(e["title"] as String),)).toList()
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(children: categories.map((e) => New(list:e["list"] as List<Product>)).toList())
                  
                  
                )
              
      
            ],
          ),
        ),
      ),
    );
  }
}
