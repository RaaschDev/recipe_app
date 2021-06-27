import 'package:flutter/material.dart';

Container bottomNavigation = Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(
              Icons.home,
              size: 35,
            ),),
            IconButton(onPressed: (){}, icon: Icon(
              Icons.bookmark,
              size: 35,
              color: Colors.black45,
            ),),
            IconButton(onPressed: (){}, icon: Icon(
              Icons.favorite,
              size: 35,
              color: Colors.black45,
            ),),
            IconButton(onPressed: (){}, icon: Icon(
              Icons.person,
              size: 35,
              color: Colors.black45,
            ),),
          ],
        ),
      );