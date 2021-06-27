import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/pages/home_page/widgets/bottom_navigation/bottom_navigation.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Container(
              height: size.height * .4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://ferramentasgourmet.com.br/wp-content/uploads/2017/10/thumb-1.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black54,
                      offset: Offset(3, 3),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text('Ingredients', style: GoogleFonts.poppins(fontSize:25, fontWeight: FontWeight.w700)),
          ),
          SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Salmao'),
                    trailing: Text('300g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: ListTile(
                    title: Text('Arroz'),
                    trailing: Text('600g'),
                  ),
                ),
        ],
      ),
      bottomNavigationBar: bottomNavigation,
    );
  }
}
