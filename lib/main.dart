import 'package:flutter/material.dart';
import 'package:recipe_app/pages/home_page/home_page.dart';
import 'package:recipe_app/pages/recipe_page/recipe_page.dart';

import 'pages/initial_page/initial_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(_)=>InitialPage(),
        '/home':(_)=>HomePage(),
        '/recipe':(_)=>RecipePage(),
      },
    );
  }
}