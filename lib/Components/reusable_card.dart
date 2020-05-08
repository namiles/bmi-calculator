import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color customColor;
  final Widget cardChild;
  final Function onPress;

  //Constructor
  ReusableCard({@required this.customColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: customColor, //the color of containers are actually supposed to be in BoxDecoration rather than inside the container.
        ),
      ),
    );
  }
}