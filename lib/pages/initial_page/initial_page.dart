import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/pages/initial_page/swipe_button/swipe_button.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/splash_image.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.black45,)),
            Container(
              height: 350,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.black45),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Cooking Experience \nLike a Chef',
                      style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SwipeButton(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
