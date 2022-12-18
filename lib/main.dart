import 'package:flutter/material.dart';
import 'package:project2/Screens/first.dart';
import 'Screens/homescreen.dart';
void main() {
  runApp(MyApp(),);
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           themeMode: ThemeMode.system,
      //theme: MyTheme.lightTheme(context),
      //darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: FirstPage() ,

    );
  }
}
