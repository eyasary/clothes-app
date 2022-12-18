import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/Screens/homescreen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 245, 245),
      body: Column(
        children: [
          Image.asset("images/first.png"),
          SizedBox(height: 20,),
          Text("WELCOME TO OUR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 5,),
          Text("STORE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 70,),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            ),
            color: Colors.black,
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)),
             child:Text(
                  "Tap Here".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
             )
        ],
      ),
    );
  }
}

