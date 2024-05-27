import 'package:flutter/material.dart';
import 'model/View/homepage.dart';
import 'package:get/get.dart';


void main(){

  runApp(Home());

}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false, //removes the banner
    theme: ThemeData.light().copyWith(
      //scaffoldBackgroundColor: Colors.
      appBarTheme: AppBarTheme(
       // backgroundColor: Colors.green
      )

    ),
      home: HomePage() ,
    );




  }
}


    