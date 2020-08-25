import 'package:flutter/material.dart';
import '../Components/GridCard.dart';
import '../Components/GridCard1.dart';
import '../Components/GridCard2.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> pageChildren(double width) {
      return <Widget>[
        
        GridCard(),
               
        SizedBox(
          width: 30,
        ),
        GridCard1(),
        SizedBox(
          width: 30,
        ),
        GridCard2()
      ];
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          print(constraints.maxWidth);
          return Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: pageChildren(constraints.biggest.width),
          );
        } else {
          print(constraints.maxWidth);
          return Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
