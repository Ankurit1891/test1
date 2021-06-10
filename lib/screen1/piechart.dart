import 'dart:math';

import 'package:flutter/cupertino.dart';

class PieChart extends CustomPainter{

  PieChart({this.categories,this.width});
  final List<Category> categories;
  final double width;

  @override
  void paint(Canvas canvas,Size size)
  {
      Offset center=Offset(size.width/3,size.height/2);
      double radius=min(size.width/3,size.height/2);

      var paint=Paint()
      ..style=PaintingStyle.stroke
      ..strokeWidth=width/2;

      double total=0;
      categories.forEach((element)=>total+=element.amount);

      double startRadian=-pi/2;

      for(var index=0;index<categories.length;index++){
        final currentCategory=categories.elementAt(index);
        final sweepRadian=currentCategory.amount/total*2*pi;
        paint.color=kNeumorphicColors.elementAt(index%categories.length);
        canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
        startRadian+=sweepRadian;
      }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;
}

class Category{
  Category(this.name,{this.amount});
  final String name;
  final double amount;
}

final kCategories=[
  Category('returned',amount: 900),
  Category("recieved",amount: 100)
];

final kNeumorphicColors=[
  Color.fromRGBO(123,201,81,1),
  Color.fromRGBO(252, 91,57,1)
];
