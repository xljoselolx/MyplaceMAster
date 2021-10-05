import 'package:flutter/material.dart';
class FabGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FabGreen();
  }

}
class _FabGreen extends State <FabGreen> {
  var _fabIcon = Icons.favorite_border;
  void onPressedFav(){
    //actualiza el witdghet setstate()
    setState(() {
      if(_fabIcon == Icons.favorite_border){
        _fabIcon = Icons.favorite;
      }
      else {
        _fabIcon = Icons.favorite_border;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final fabGreen = FloatingActionButton(
      backgroundColor: Color(0xFF16db58),
      mini: true,
      tooltip: "fab",
      child: Icon(
        _fabIcon
      ),
      onPressed: onPressedFav,
    );
    return fabGreen;
  }
}
