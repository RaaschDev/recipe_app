import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/pages/initial_page/swipe_button/swipe_button_controller.dart';

class SwipeButton extends StatelessWidget {
  const SwipeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SwipeButtonCotroller();
    return Observer(
      builder: (context) {
        return InkWell(
          onTap: () {
            if(controller.loading==false){
              controller.setLoading(context);
            }
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 60,
            width: controller.loading == false
                ? MediaQuery.of(context).size.width * .5
                : 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                controller.loading == false
                    ? Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_right,
                              color: Colors.green, size: 25),
                        ),
                      )
                    : Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),),
                        ),
                      ),
                controller.loading == false
                    ? SizedBox(
                        width: 15,
                      )
                    : SizedBox(),
                controller.text == true
                    ? Expanded(
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 10),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        );
      },
    );
  }
}
