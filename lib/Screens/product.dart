import 'package:flutter/material.dart';

class Product { 
  final String image, title, description;
  final int price, size, id;
  final double value;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.value,
  });
}

List<Product> products = [
  Product(
      id: 1,
      value: 0,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      value: 0,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      value: 0,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      value: 0,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      value: 0,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    value: 0,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];
List<Product> shoes=[
  Product(id: 1,value: -30/360, image: "images/nike1.png", title: "AIR-MAX", price: 120, description: "description,", size: 12, color: Color(0xffDE0106)),
  Product(id: 2,value: -30/360, image: "images/nike2.png", title: "ZOOM", price: 90, description: "description", size: 40, color: Color(0xffE66863)),
  Product(id: 2,value: -30/360, image: "images/nike3.png", title: "Air-FORCE", price: 90, description: "description", size: 40, color: Color(0xffD7D8DC)),
  Product(id: 2,value: -30/360, image: "images/nike4.png", title: "ZOOM", price: 90, description: "description", size: 40, color: Color.fromARGB(255, 86, 84, 84)),
  Product(id: 2,value: -30/360, image: "images/nike5.png", title: "AIR-JORDAN LOW", price: 90, description: "description", size: 40, color:  Color(0xff37376B)),
  Product(id: 2,value: -30/360, image: "images/nike6.png", title: "AIR-JORDAN LOW", price: 90, description: "description", size: 40, color: Color(0xffE2E3E5)),
  Product(id: 2,value: -30/360, image: "images/nike7.png", title: "AIR-JORDAN LOW", price: 90, description: "description", size: 40, color: Color(0xffD68043)),
  Product(id: 2,value: -30/360, image: "images/nike8.png", title: "AIR-JORDAN MID", price: 90, description: "description", size: 40, color: Color(0xff3F7943))
];
List<Product> All=[];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";