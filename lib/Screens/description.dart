import 'package:flutter/material.dart';

import 'constants.dart';
import 'product.dart';


class Description extends StatelessWidget {

   const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}