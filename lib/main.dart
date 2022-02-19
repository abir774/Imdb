import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:imdb/homePage.dart';
import 'package:imdb/moviePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          /*primarySwatch: Colors.blue,
        brightness: Brightness.dark,*/

          ),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/movieDetails', page: () => moviePage()) // Dynamic route
      ],
    );
  }
}
