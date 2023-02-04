import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class DarkTheme{
  static LocalStorage storage= LocalStorage('evoting_app');

  static void setTheme(bool dark){
    storage.setItem('theme_mode', dark);
  }

  static ThemeData getTheme(){

    if(storage.getItem('theme_mode')??true){ //getItem() can give nullable values
      return ThemeData.dark();
    }
    return ThemeData.light();
  }
}