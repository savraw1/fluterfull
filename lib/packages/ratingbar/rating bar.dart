import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
 class Rating1 extends StatelessWidget {
   const Rating1({super.key});

   @override
   Widget build(BuildContext context) {
     double _rating=1;
     return MaterialApp(
       home: Scaffold(
         body: RatingBar.builder(
           direction: Axis.horizontal,
             initialRating: 1,
             allowHalfRating: true,
             maxRating: 8,
             itemCount: 8,
             itemPadding: EdgeInsets.symmetric(horizontal: 25),
             itemBuilder: (context, _)=> Icon(Icons.star,color: Colors.yellow),
             onRatingUpdate: (rating){
             _rating=rating;
           print(rating);
             }),
       )
     );
   }
 }
void main(){
   runApp(Rating1());
}