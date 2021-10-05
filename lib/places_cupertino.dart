import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/profile_places.dart';
import 'package:flutter_app/search_places.dart';
class PlacesCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final places = Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white.withAlpha(50),//realiza la transparencia
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFF574ACF),
                ),
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color(0xFF574ACF),
              ),
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xFF574ACF),
              ),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index)
        {
          CupertinoTabView cupertinoTabView;
          switch(index){
            case 0:
              cupertinoTabView = CupertinoTabView(
                builder: (BuildContext context)=> MyHome(),
              );
              break;

            case 1:
              cupertinoTabView = CupertinoTabView(
                builder: (BuildContext context)=> SearchPlaces(),
              );
              break;

            case 2:
              cupertinoTabView = CupertinoTabView(
                builder: (BuildContext context)=> ProfilePlaces(),
              );
              break;
          }
          return cupertinoTabView;
        }
      ),
    );
    return places;
  }

}