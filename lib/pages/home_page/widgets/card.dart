import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContent extends StatelessWidget {
  const CardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/recipe');
      },
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.brown.withOpacity(.9),
                Colors.brown.withOpacity(.6),
              ])),
          child: Center(
            child: Icon(
              Icons.bookmark_add,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
      ),
    );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
                image: NetworkImage(
                    'https://ferramentasgourmet.com.br/wp-content/uploads/2017/10/thumb-1.jpg'),
                fit: BoxFit.fitHeight),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 6, color: Colors.black, offset: Offset(2, 2))
            ]),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black38, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                button,
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'Salmon Sushi \nMatcha',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '12 Ingredients | 40 Min',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 10),
                ),
              ],
            )),
      ),
    );
  }
}
