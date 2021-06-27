import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/pages/home_page/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:recipe_app/pages/home_page/widgets/custom_appbar/custom-appbar.dart';

import 'widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: PreferredSize(
          child: CustomAppBar(),
          preferredSize: Size(
            double.maxFinite,
            size.height * .3,
          ),
        ),
        body: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return CardContent();
          },
        ),
        bottomNavigationBar: bottomNavigation);
  }
}
