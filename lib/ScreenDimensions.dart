import 'package:flutter/cupertino.dart';

class ScreenDimensions{

  static double getHeight(BuildContext context){
    return double.parse(MediaQuery.of(context).size.height.toString());
  }

  static double getWidth(BuildContext context){
    return double.parse(MediaQuery.of(context).size.width.toString());
  }
}