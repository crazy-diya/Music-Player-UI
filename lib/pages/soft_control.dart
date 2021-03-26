import 'package:flutter/material.dart';

import '../constants.dart';

class CircularSofyButton extends StatelessWidget {
  double radius;
  final Widget icon;

  CircularSofyButton({Key key,this.radius, @required this.icon}) : super(key: key){
    if(radius == null || radius <= 0 ) radius = 32;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius/2),
      child: Stack(
        children: [
          Container(
            width: radius*2,
            height: radius*2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: backgroundColor,
                boxShadow:[
                  BoxShadow(color: shadowColor,offset: Offset(8, 6), blurRadius: 12),
                  BoxShadow(color: Colors.white, offset: Offset(-8, -6), blurRadius: 12),
                ]
            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
