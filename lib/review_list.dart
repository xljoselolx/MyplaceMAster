import 'package:flutter/material.dart';
import 'package:flutter_app/review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      children: <Widget>[
        Review("assets/images/persona1.jpg", "Laura Leon","1 review 3 photos",4,"Muy Buen Lugar para visitar."),
        Review("assets/images/persona2.jpg", "Ana Lopez","3 review 1 photos",5,"Bellisimo lugar."),
        Review("assets/images/persona3.jpg", "Luis Rioja","2 review 5 photos",3,"Muy recomendable."),
        Review("assets/images/persona4.jpg", "Elisa Soto Leon","4 review 6 photos",1,"Muy mala experiencia."),
        Review("assets/images/persona5.jpg", "Julio Crespo","5 review 2 photos",2,"La pase increible."),
      ],
    );
    return reviewList;

  }

}